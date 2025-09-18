# When you have multiple families of related objects (e.g., UI components for Mac vs Windows),
# and you want to instantiate them without hardcoding the logic for each variant.

=begin
  🏗️ Structure

    - Abstract Factory: Declares methods for creating abstract products.
    - Concrete Factory: Implements creation methods for specific product variants.
    - Abstract Product: Interface for a product type.
    - Concrete Product: Specific implementation of the product.
    - Client: Uses only the abstract interfaces.
=end

# Let's say you're building a cross-platform UI toolkit:

# Abstract Products
class Button
  def render; end
end

class Checkbox 
  def render; end
end

# Concrete Products
class MacButton < Button
  def render
    puts "Rendering Mac Button"
  end
end

class WindowsButton < Button
  def render
    puts 'Rendering Windows Button'
  end
end

class MacCheckbox < Checkbox
  def render
    puts "Rendering Mac Checkbox"
  end
end

class WindowsCheckbox < Checkbox
  def render
    puts "Rendering Windows Checkbox"
  end
end

# Abstract Factory
class UIFactory
  def create_button; end
  def create_checkbox; end
end

# Concrete Factories
class MacFactory < UIFactory
  def create_button
    MacButton.new
  end

  def create_checkbox
    MacCheckbox.new
  end
end

class WindowsFactory < UIFactory
  def create_button
    WindowsButton.new
  end

  def create_checkbox
    WindowsCheckbox.new
  end
end

# Client Code
def render_ui(factory)
  button = factory.create_button
  checkbox = factory.create_checkbox
  button.render
  checkbox.render
end

render_ui(MacFactory.new)
render_ui(WindowsFactory.new)