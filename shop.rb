require_relative 'product'
require_relative 'film'

leon = Film.new("Леон", 20)
puts "Это фильм #{leon.name}, его на складе #{leon.count} штук"