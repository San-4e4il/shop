class Book < Product
  def initialize(name, author, genre, year, director, count)
    super
    @props.delete(:director)
    @props.delete(:year)
  end
  def to_s
     "Книга: #{@props[:name]}, #{@props[:genre]}.Автор - #{@props[:author]}. (Осталось #{@props[:count]} шт.)"
  end
end
