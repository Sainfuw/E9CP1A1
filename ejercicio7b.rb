# Clase producto
class Product
  attr_reader :name
  attr_reader :large
  attr_reader :medium
  attr_reader :small

  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

  def promedio
    (@large + @medium + @small + @xsmall) / 4
  end
end

def new_catalog(products_list)
  file = File.open('nuevo_catalogo.txt', 'w')
  products_list.each do |prod|
    file.puts "#{prod.name}, #{prod.large}, #{prod.medium}, #{prod.small}"
  end
  file.close
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

puts products_list
puts products_list.map(&:promedio)
new_catalog(products_list)
