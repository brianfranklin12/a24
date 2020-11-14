class A24::Scraper

  def self.create_film_list
    doc = Nokogiri::HTML(open("https://a24films.com/films"))

    doc.search("div.film a").each do |film|
      A24::Film.new(film.attr("title").strip, film.attr("href").strip)
    end
  end

  def self.get_info(film)
    doc = Nokogiri::HTML(open(film.url))
    film.year = doc.search("div.release-date h3").text.strip
    film.director = doc.search("h3.content").first.text.strip
    film.description = doc.search("div.synopsis p").text.strip
  end
end

