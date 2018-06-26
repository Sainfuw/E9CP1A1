# Random class
class Dog
  def initialize(hash)
    @hash = hash
  end

  def ladrar
    puts "#{@hash[:nombre]} está ladrando!"
  end
end

propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }

dog = Dog.new(propiedades)
dog.ladrar
