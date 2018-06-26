# Clase Producto
class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name.to_i
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

  def promedio
    (@large + @medium + @small + @xsmall) / 4
  end
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
