require 'open-uri'
require 'nokogiri'
require 'pry'

class Scrapper
  category = 'healthy'
  url = "https://www.bbcgoodfood.com/recipes/category/#{category}"
  html_doc = Nokogiri::HTML(open(url).read)
    html_doc.search('.category-item--list li').each do |element|
      image = element.css('img')
      desc = element.css('category-item--description')
      p image
      p desc
    end

end

scrape = Scrapper.new
