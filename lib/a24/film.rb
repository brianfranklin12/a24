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

  def self.get_info_or_display_info(film)

    if film.description == nil 
      A24::Scraper.get_info(film)
      film.display_info
    else
      film.display_info
    end
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