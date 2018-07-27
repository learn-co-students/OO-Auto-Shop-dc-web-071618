class CarOwner
  @@all = [] 
  attr_reader :name

  def self.all 
    @@all 
  end

  def initialize(name)
    @name = name
    @@all << self 
  end

  def cars 
    Car.all.select do |car|
      car.car_owner == self 
    end
  end

  def mechanics 
    cars.map do |car|
      car.mechanic 
    end
  end

  def self.average_cars_owned
    sum = 0 
    self.all.each do |car_owner|
      sum += car_owner.cars.length 
    end
    sum / self.all.length 
  end
end
