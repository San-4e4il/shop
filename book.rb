class Book < Product
  def initialize
    puts "Введите название, автора, жанр и количество на складе"
  end
  def add(name, author, genre, count)
    @props = {
      :name => name,
      :author => author,
      :genre => genre,
      :count => count
    }
  end
  def to_s
     "Книга: #{@props[:name]}, #{@props[:genre]}.Автор - #{@props[:author]}. (Осталось #{@props[:count]} шт.)"
  end
end