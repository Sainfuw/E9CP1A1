# Clave morse
class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash
    hash = { '0' => '-----', '1' => '.----', '2' => '..---', '3' => '...--',
             '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...',
             '8' => '---..', '9' => '---..' }
    hash.each { |key, value| return value if key.to_i == @number }
  end

  def to_morse
    print generate_hash
  end
end

m = Morseable.new(5)
m.to_morse
