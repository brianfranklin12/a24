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
    puts ""
    puts "------------------------------------------------------------"
    puts "Title: #{self.title}"
    puts "Released #{self.year}"
    puts "Directed by #{self.director}"
    puts ""
    puts "Description: #{self.description}"
    puts "------------------------------------------------------------"
    puts ""

  end

end