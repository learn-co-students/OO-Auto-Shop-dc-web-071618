require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


co1 = CarOwner.new("Jeff")
co2 = CarOwner.new("Peter")
co3 = CarOwner.new("Aubree")
co4 = CarOwner.new("Molly")

m1 = Mechanic.new("Jenn", "Sedan")
m2 = Mechanic.new("Rob", "Sport")
m3 = Mechanic.new("Sam", "Coupe")
m4 = Mechanic.new("John", "Minivan")

c1 = Car.new("Nissan", "Versa", "Sedan", co1, m1)
c2 = Car.new("Chevy", "Corvette", "Sport", co2, m2)
c3 = Car.new("Toyota", "Previa", "Minivan", co3, m3)
c4 = Car.new("Toyota", "Corolla", "Coupe", co4, m4)

binding.pry
