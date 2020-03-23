# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'nokogiri'


ingredient = 'chocolate'
url = "https://www.bbcgoodfood.com/search/recipes?query=#{ingredient}"
html_doc = Nokogiri::HTML(open(url).read)

html_doc.search('article').each do |element|


end
