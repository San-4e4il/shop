class Film < Product
  def initialize
    puts "Введите название, режжисёра, год выхода и количество на складе"
  end
  def add(name, year, director, count)
    @props = {
      :name => name,
      :year => year,
      :director => director,
      :count => count
    }
  end
  def to_s
    "Фильм: #{@props[:name]}, #{@props[:year]}года.Режжисёр - #{@props[:director]}. (Осталось #{@props[:count]} шт.)"
  end
end
