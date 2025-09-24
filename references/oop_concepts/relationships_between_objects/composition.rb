# A House is composed of Rooms. A Room cannot exist independently of a House. When the House object is destroyed, the Room objects inside it are also conceptually destroyed.

class Room
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class House
  attr_reader :address, :rooms

  def initialize(address)
    @address = address
    # A House creates and owns its Room objects.
    @rooms = [Room.new('Living Room'), Room.new('Kitchen')]
  end
end

# Usage
my_house = House.new('123 Main St')

# The rooms are part of the house
my_house.rooms.each { |room| puts "The house has a #{room.name}." }
# => The house has a Living Room.
# => The house has a Kitchen.

# If the house is destroyed, the rooms are also gone
my_house = nil
# The Room objects are now garbage collected along with the House object.