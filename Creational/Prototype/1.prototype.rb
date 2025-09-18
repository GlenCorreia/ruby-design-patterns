=begin
  The Prototype pattern is a creational pattern that lets you create new objects by cloning
  existing ones, rather than instantiating them from scratch. This is especially important 
  when object creation is expensive or complex.

  🧠 Core Idea
    - Instead of building a new object, you copy an existing one (the prototype). This allows for:
    - Efficient object creation
    - Runtime flexibility
    - Avoiding subclassing for minor variations

    🏗️ Structure in Ruby
    🔧 Components
    - Prototype Interface: Declares a clone method.
    - Concrete Prototype: Implements the clone logic.
    - Client: Uses the prototype to create new objects.
=end

# Example: Cloning a Car

# Abstract Prototype
class Car
  attr_accessor :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def clone
    Marshal.load(Marshal.dump(self)) # Deep copy
  end

  def to_s
    "#{@year} #{@make} #{@model}"
  end
end

# Usage
prototype_car = Car.new("Tesla", "Model S", 2025)
cloned_car = prototype_car.clone
cloned_car.year = 2026

puts prototype_car.to_s   # => 2025 Tesla Model S
puts cloned_car.to_s      # => 2026 Tesla Model S

# This uses Marshal.dump/load for deep cloning, ensuring nested objects are copied too.