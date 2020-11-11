class A24::Film
  attr_accessor :title, :year, :director, :writer, :description

  @@all = []

  def initialize(url)

    doc = Nokogiri::HTML(open("https://a24films.com/films/#{url}"))

    @title = doc.search("h1.title").first.text.strip
    @year = doc.search("div.release-date h3").text.strip
    @director = doc.search("h3.content").first.text.strip
    @description = doc.search("div.synopsis p").text.strip
    @@all << self 
  end

  # def self.scrape_site
  #   films = []
  #   doc = Nokogiri::HTML(open("https://a24films.com/films/midsommar"))

  #   film = self.new
  #   film.title = doc.search("h1.title").first.text.strip
  #   film.year = doc.search("div.release-date h3").text.strip
  #   film.director = doc.search("h3.content").first.text.strip
  #   film.description = doc.search("div.synopsis p").text.strip
  #   binding.pry
  #   film 
  # end

  def self.all
    @@all
  end

end