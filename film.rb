class Film < Product

  attr_writer :name, :year, :director, :cost, :count



  def initialize
    super
    @file_path = "#{@file_dir}/films"
    @size = Dir.glob(File.join(@file_path, '**', '*')).select { |file| File.file?(file) }.count
  end


  def info
    puts "Введите название, режжисёра, год выхода, цену и количество на складе"
  end



  def add(name, year, director, cost ,count)
      @name = name
      @year = year
      @director = director
      @count = count
      @cost = cost
      @propireties = [@name, @director, @year, @cost, @count]
  end


  def create
    file = File.new("#{@file_path}/film-#{@size+1}", "w:UTF-8")
    @propireties.each do |prop|
      file.puts(prop)
    end
    file.close
  end


  def self.from_file(filename)
    file = File.new("#{File.dirname(__FILE__)}/data/films/#{filename}", "r:UTF-8")
    @props = file.readlines
  end

  def to_s
    super
  end

end
