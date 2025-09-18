=begin
  The Singleton pattern is a creational pattern that ensures a class has only one
  instance and provides a global point of access to it.

  🧠 WHY use Singleton?
    - You want exactly one object to coordinate actions across your system (e.g., a
      config manager, logger, or cache).
    - You want controlled access to shared resources.
    - You want to prevent multiple instantiations of a class.
=end

# ✅ Option 1. Using Ruby's Singleton Module
# Ruby has a built-in Singleton module in the standard library.

require 'singleton'

class Logger 
  include Singleton

  def log(message)
    puts "Log: #{message}"
  end
end

# Usage
Logger.instance.log("System initialized")

=begin
  🔒 Key Features:
  - Logger.new is disabled - you can't instantiate it directly.
  - Logger.instance gives you the only instance.
  - Thread-safe and clean.
=end