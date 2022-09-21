require_relative 'product'
require_relative 'film'
require_relative 'book'

puts "Добро пожаловать в магазин"
puts "Что вы хотите добавить в ассортимент?"
choices = Product.prod_types
choice = -1
all = []
loop do
  until choice >= 0 and choice <= choices.size
    choices.each_with_index do |type, index|
      puts "\t #{index} - #{type}"
    end
    puts "\t #{choices.size} - Прекратить"
    choice = STDIN.gets.chomp.to_i
  end
  if choice == choices.size
    break
  else
    if choice < choices.size
      prod = Product.create(choice)
      properites = gets.chomp.split(",")
      prod.add(properites[0],properites[1],properites[2], properites[3])
      all << prod
      choice = -1
    end
  end
end
for i in all do
  puts i.to_s
end