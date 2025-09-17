=begin
  ✅ Option 2: Manual Singleton (for deeper control)

  If you want more flexibility or avoid the Singleton module
=end

class ConfigManager
  @@instance = nil

  def self.instance
    @@instance ||= new
  end

  private_class_method :new

  def get_config
    { app_name: "SonarX", version: "1.0.0" }
  end
end

# Usage
config = ConfigManager.instance
puts config.get_config

=begin
  🔍 Breakdown"
  
    - @@instance stores the single object
    - new is made private to prevent external instantiation
    - self.instance lazily initializes the object
=end

# 🧪 Quick Test

a = ConfigManager.instance
b = ConfigManager.instance

puts a.object_id == b.object_id # true

=begin
  🧭 When to Avoid Singleton
  - If you need multiple instances later (e.g., for testing or scaling)
  - If it introduces global state that’s hard to manage or mock
=end 