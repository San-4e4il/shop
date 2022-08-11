class Product
  def initialize(name, author, genre, year, director, count)
    @props = {
      :name => name,
      :author => author,
      :genre => genre,
      :year => year,
      :director => director,
      :count => count
    }
  end
end