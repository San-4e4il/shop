class Film < Product
  def initialize(name, author, genre, year, director, count)
    super
    @props.delete(:author)
    @props.delete(:genre)
  end
  def to_s
    "Фильм: #{@props[:name]}, #{@props[:year]}года.Режжисёр - #{@props[:director]}. (Осталось #{@props[:count]} шт.)"
  end
end
