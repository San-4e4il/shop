class Product


  def initialize
    @file_dir = File.dirname(__FILE__) + "/data"
  end


  def self.prod_types
    return [Book, Film]
  end


  def self.create(type_index)
    return prod_types[type_index].new
  end


  def to_s
    @props.each do |i|
      puts i
    end
  end

end