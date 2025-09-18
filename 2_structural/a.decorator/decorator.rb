=begin
  The Decorator design pattern is a structural design pattern that lets you
  dynamically add behavior to objects without modifying thier code.

  🧠 Core Concept
  Instead of subclassing to extend behavior, you wrap objects with decorators 
  that add functionality. This promotes:
    - Open/Closed Principle: Extend behavior without altering existing code.
    - Composition over Inheritance: Stack behaviors dynamically.
    - Runtime flexibility: Add/remove features as needed.

  🧱 Pattern Structure
  🔧 Key Components
  
  (Role) - (Description)
  Component - Interface for objects that can be decorated
  ConcreteComponent - The base object to be wrapped
  Decorator - Wraps a component and conforms to its interface
  ConcreteDecorator - Adds specific behavior to the component

  You can stack decorators in any order, dynamically building behavior.
=end

# ☕ Example: Coffee Customization

# Component
class Coffee
  def cost
    5
  end

  def ingredients
    "Coffee"
  end
end

# Decorator
class CoffeeDecorator
  def initialize(coffee)
    @coffee = coffee
  end

  def cost
    @coffee.cost
  end

  def ingredients
    @coffee.ingredients
  end
end

# Concrete Decorators
class MilkDecorator < CoffeeDecorator
  def cost
    super + 2
  end

  def ingredients
    super + ", Milk"
  end
end

class SugarDecorator < CoffeeDecorator
  def cost
    super + 1
  end

  def ingredients
    super + ", Sugar"
  end
end

# Usage
coffee = Coffee.new
coffee_with_milk = MilkDecorator.new(coffee)
coffee_with_milk_and_sugar = SugarDecorator.new(coffee_with_milk)

puts coffee_with_milk_and_sugar.cost         # => 8
puts coffee_with_milk_and_sugar.ingredients  # => "Coffee, Milk, Sugar"
