# A Car needs a Driver to move, but the Car doesn't own the Driver. The Driver is temporarily used by the Car's drive method.

class Driver
  def drive
    'The driver is driving.'
  end
end

class Car
  # The Car depends on the Driver for the drive method, but does not
  # store a reference to the Driver as an instance variable.
  def move(driver)
    "#{driver.drive} The car is moving."
  end
end

# Usage
driver = Driver.new
car = Car.new
puts car.move(driver)
# => The driver is driving. The car is moving.