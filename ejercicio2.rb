# Random class
class Car
  attr_reader :model
  attr_reader :year
  def initialize(model, year)
    @model = model
    @year = year
  end
end

car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
