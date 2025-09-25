class Logistics # Product (Interface)
  def deliver
    raise NotImplementedError, "Subclass must implement `deliver`"
  end
end

class Truck < Logistics # Concrete Products
  def deliver
    puts "Delivery booked by road transport."
  end
end

class Ship < Logistics # Concrete Products
  def deliver
    puts "Delivery booked by sea transport."
  end
end

class Plane < Logistics # Concrete Products
  def deliver
    puts "Delivery booked by air transport."
  end
end

class TransportFactory # Creator (Factory)
  def self.create(type)
    case type
    when :road
      Truck.new
    when :sea
      Ship.new
    when :air
      Plane.new
    else
      raise "Unknown transport type: #{type}"
    end
  end
end

transport = TransportFactory.create(:sea)
transport.deliver