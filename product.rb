class Product
  def self.prod_types
    return [Book, Film]
  end
  def self.create(type_index)
    return prod_types[type_index].new
  end
end