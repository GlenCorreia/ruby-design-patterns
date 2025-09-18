=begin
  The Factory pattern is a creational design pattern that provides an interface for 
  creating objects in a superclass, but allows subclasses to alter the type of objects 
  that will be created.

  🧠 Why Use the Factory Pattern?
  - You want to abstract away complex instantiation logic.
  - You need to create objects based on input or configuration.
  - You want to decouple object creation from usage, improving maintainability.
=end

# Step 1: Define a common interface
class SignalProcessor
  def process
    raise NotImplementedError, "Subclass must implement `process`"
  end
end

# Step 2: Create concrete implementations
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

# Step 3: Build the factory
class ProcessorFactory
  def self.create(type)
    # case type
    # when :echo
    #   EchoProcessor.new
    # when :doppler
    #   DopplerProcessor.new
    # else
    #   raise "Unknown processor type: #{type}"
    # end

    # Above commented code can also be written in if else as given below
    if type == :echo
      EchoProcessor.new
    elsif type == :doppler
      DopplerProcessor.new
    else
      raise "Unknown processor type: #{type}"
    end
  end
end

# ✅ Usage
processor = ProcessorFactory.create(:doppler)
puts processor.process # => "Processing Doppler shift..."

