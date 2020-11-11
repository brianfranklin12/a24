class A24::Scraper

  def self.create_film_list
    doc = Nokogiri::HTML(open("https://a24films.com/films"))

    @films = []

    doc.search("div.film a").each do |film|
      @films << film.attr("title").strip
    end
    
    @films

  end




end