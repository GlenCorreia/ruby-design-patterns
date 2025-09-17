class SignalProcessor
  def process
    raise NotImplementedError, "Subclass must implement `process`"
  end
end

class EchoProcessor < SignalProcessor
  def process
    "Processing echo signal..."
  end
end

class DopplerProcessor < SignalProcessor
  def process
    "Processing Doppler shift..."
  end
end

# If you want extensibility without modifying the factory every time.

class ProcessorFactory
  @registry = {}

  def self.register(type, klass)
    @registry[type] = klass
  end

  def self.create(type)
    klass = @registry[type]
    raise "Unknown type: #{type}" unless klass
    klass.new
  end
end

# Register processes
ProcessorFactory.register(:echo, EchoProcessor)
ProcessorFactory.register(:doppler, DopplerProcessor)

# This lets you plug in new processors without touching the factory logic - great for plugin-style architectures.

=begin
  🧪 When to Use vs. Avoid

  Use when...
  1. You have multiple subclasses
  2. You want to isolate instantiation
  3. You expect frequent changes

  Avoid when...
  1. Object creation is trivial
  2. You don’t need polymorphism
  3. You want tight control over instantiation

=end