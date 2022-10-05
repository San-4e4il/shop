class Book < Product

  attr_writer :name, :author, :genre, :cost, :count


  def initialize
    super
    @file_path = "#{@file_dir}/books"
    @size = Dir.glob(File.join(@file_path, '**', '*')).select { |file| File.file?(file) }.count
  end


  def info
    puts "Введите название, автора, жанр, цену и количество на складе"
  end


  def add(name, author, genre, cost, count)
      @name = name
      @author = author
      @genre = genre
      @count = count
      @cost = cost
      @propireties = [@name, @genre, @author, @cost, @count]
  end


  def create
    file = File.new("#{@file_path}/book-#{@size+1}", "w:UTF-8")
    @propireties.each do |prop|
      file.puts(prop)
    end
    file.close
  end


  def self.from_file(filename)
    file = File.new("#{File.dirname(__FILE__)}/data/books/#{filename}", "r:UTF-8")
    @props = file.readlines
  end


  def to_s
    super
  end
  
end