require_relative 'product'
require_relative 'film'
require_relative 'book'

puts "Добро пожаловать в магазин"
puts "Что вы хотите добавить в ассортимент?"
choise = nil
all = []
while(choise != 0) do
  puts "1 - Книгу\n2 - Фильм\n0 - Закончить"
  choise = gets.chomp.to_i
  case choise
  when 1
    puts "Введите название, автора, жанр и количество на складе"
    properites = gets.chomp.split(",")
    prod = Book.new(properites[0],properites[1],properites[2],nil,nil, properites[3])
    all << prod
  when 2
    puts "Введите название, режжисёра, год выхода и количество на складе"
    properites = gets.chomp.split(",")
    prod = Film.new(properites[0],nil ,nil ,properites[2],properites[1], properites[3])
    all << prod
  when 0
    puts "Закончили"
  else
    puts "Не правильно"
  end
end
for i in all do
  puts i.to_s
end

