require 'open-uri'
require 'nokogiri'
require "discogs"
wrapper = Discogs::Wrapper.new("My awesome web app")

first_album_id = wrapper.get_artist_releases("329937").releases.first.id
artist_name = wrapper.get_artist("329937").name
vinyl_name = wrapper.get_artist_releases("329937").releases.first.title
url_builder = "#{artist_name.split(" ").join('-')}-#{vinyl_name.split(" ").join('-')}"
url = "https://www.discogs.com/#{url_builder}/master/#{first_album_id}"
html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)
html_doc.search('#page_content > div.body > div.image_gallery.image_gallery_large > a > span.thumbnail_center > img').each do |element|
  @image_url = element.attribute('src')
end
html_doc.search('#page_content > div.body > div.profile > div:nth-child(3) > a').each do |element|
  @genre = element.text
end
html_doc.search('#r5355965 > td.label.has_header > a').each do |element|
  @label = element.text
end

quality = ['Poor', 'Good', 'New', 'Great']
price_per_day = [1, 1.25, 1.5, 1.75, 2]
dimensions1="33 Tours"
dimensions2="45 Tours"
dimension = [dimensions1, dimensions2]
# user = [user1, user2, user3, user4, user5]
user = ['user1', 'user2', 'user3', 'user4', 'user5']

puts url_builder
puts "-----------"
puts @image_url
puts "-----------"
puts @genre
puts "-----------"
puts @label
puts "-----------"
puts quality.sample
puts "-----------"
puts price_per_day.sample
puts "-----------"
puts dimension.sample
puts "-----------"
puts user.sample



# Vinyl.create(name: wrapper.get_artist_releases("329937").releases.first.title,
#             year: wrapper.get_artist_releases("329937").releases.first.year,
#             artist: wrapper.get_artist("329937").name,
#             genre: @genre,
#             label: @label,
#             quality: quality.sample,
#             price_per_day: price_per_day.sample,
#             user: user.sample,
#             dimension: dimension.sample,
#             image_url: @image_url
#             )

# genre: "Rock", <-- scrapp it OK
        # label: "Motown", <-- scrapp it OK
        # quality: "Good", <-- assign at random
        # price_per_day: 2.00, <-- assign at random between 1 and 2
        # user: user2, <-- assign at random (user1 - 5)
        # dimension: dimensions1 <-- assign at random (1 and 2)
