class A24::Film
  attr_accessor :title, :url, :year, :director, :writer, :description

  @@all = []

  def initialize(title, url)
    @title = title
    @url = url
    @@all << self 
  end

  def self.all
    @@all
  end


  def display_info
    puts self.title
    puts self.year
    puts self.director
    puts self.description
  end

end