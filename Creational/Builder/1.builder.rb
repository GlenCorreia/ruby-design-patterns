=begin
  🧠 What Is the Abstract Builder Pattern?

  🔍 Purpose
  To construct complex objects step by step, allowing different representations of the same
  construction process. The 'abstract' part means you define a generic interface for building
  parts of an object, and let concrete builders implement the specifics.

  🧱 Key Components
    - Builder Interface: Declares methods for building parts of the product.
    - Concrete Builders: Implement the builder interface to construct and assemble parts.
    - Product: The complex object being built.
    - Director: Controls the construction process using a builder.
=end

# Let's say you're building a customizable meal

# Product
class Meal
  attr_accessor :starter, :main_course, :dessert

  def describe
    puts "Starter: #{@starter}, Main Course: #{@main_course}, Dessert: #{@dessert}"
  end
end

# Abstract Builder
class MealBuilder
  def initialize
    @meal = Meal.new
  end

  def add_starter; end
  def add_main_course; end
  def add_dessert; end
  def get_meal
    @meal
  end
end

# Concrete Builder 1
class VegMealBuilder < MealBuilder
  def add_starter
    @meal.starter = "Salad"
  end

  def add_main_course
    @meal.main_course = "Paneer Butter Masala"
  end

  def add_dessert
    @meal.dessert = "Gulab Jamun"
  end
end

# Concrete Builder 2
class NonVegMealBuilder < MealBuilder
  def add_starter
    @meal.starter = "Chicken Soup"
  end

  def add_main_course
    @meal.main_course = "Mutton Biryani"
  end

  def add_dessert
    @meal.dessert = "Ice Cream"
  end
end

# Director
class Chef
  def prepare_meal(builder)
    builder.add_starter
    builder.add_main_course
    builder.add_dessert
    builder.get_meal
  end
end

# Client Code
chef = Chef.new
veg_meal = chef.prepare_meal(VegMealBuilder.new)
veg_meal.describe

non_veg_meal = chef.prepare_meal(NonVegMealBuilder.new)
non_veg_meal.describe