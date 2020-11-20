# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "*************************"
p "***  DB:SEED START !  ***"
p "*************************"
p "-------------"
p "Models.destroy_all"
Rent.destroy_all
Vinyl.destroy_all
User.destroy_all
p "-------------"
p "Users creation"

user = User.create!(email: 'toto@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Georgito", last_name: "Yito", address: "2 Avenue Jean Jaurès, Pont de Choisy, 94600 Choisy-le-Roi")
user1 = User.create!(email: 'toto1@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Martin", last_name: "Tran", address: "21 Rue de l'École de Médecine, 75006 Paris")
user2 = User.create!(email: 'toto2@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Olivier", last_name: "Calmels", address: "68 Rue Mouffetard, 75005 Paris")
user3 = User.create!(email: 'toto3@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Amal", last_name: "Gouia", address: "5 Rue Blainville, 75005 Paris")
user4 = User.create!(email: 'toto4@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Gerom", last_name: "Bretzel", address: "18 Rue des Abbesses, 75018 Paris")
user5 = User.create!(email: 'toto5@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Alex", last_name: "Uchiwa", address: "5 Place de la Nation, 75011 Paris")
@users = [user1, user2, user3, user4, user5]

p "-------------"
p "Vinyls creation"

dimensions1="33 Tours"
dimensions2="45 Tours"

vin_1 = Vinyl.create(name: "Highly Evolved",
        year:"2017",
        artist:"The Vines",
        genre: "Rock",
        label: "Motown",
        quality: "Good",
        price_per_day: 2.00,
        user: user2,
        dimension: dimensions1
      )

vin_2 = Vinyl.create(name:"Jean Sebastien Bach 'Prestige de l'Orgue'",
        year:"1970",
        artist:"Helmut Walcha",
        genre: "Classic",
        label: "Deutsche Grammophon Collection",
        quality: "Good",
        price_per_day: 2.50,
        user: user3,
        dimension: dimensions2
      )


vin_3 = Vinyl.create(name: "Moral Panic",
        year:"2020",
        artist:"Nothing But Thieves",
        genre: "Rock",
        label: "Sony Music",
        quality: "New",
        price_per_day: 3.00,
        user: user4,
        dimension: dimensions1
      )


vin_4 = Vinyl.create(name: "The Temple Of I & I",
        year:"2017",
        artist:"Thievery Corporation",
        genre: "Electronic",
        label: "Eighteenth Street Lounge Music",
        quality: "Good",
        price_per_day: 0.50,
        user: user5,
        dimension: dimensions2
      )

vin_5 =Vinyl.create(name: "I'm In You",
        year:"1977",
        artist:"Peter Frampton",
        genre: "Rock",
        label: "A&M Records",
        quality: "New",
        price_per_day: 1.20,
        user: user2,
        dimension: dimensions1
      )

vin_6 =Vinyl.create(name: "More Miles Per Hour",
        year:"1979",
        artist:"John Miles",
        genre: "Rock",
        label: "Decca",
        quality: "Poor",
        price_per_day: 0.50,
        user: user3,
        dimension: dimensions1
      )

vin_7 =Vinyl.create(name: "Nightwatch",
        year:"1978",
        artist:"Kenny Loggins",
        genre: "Rock",
        label: "Columbia",
        quality: "Very Good",
        price_per_day: 1.50,
        user: user4,
        dimension: dimensions2
      )

vin_8 =Vinyl.create(name: "Love's A Liar",
        year:"1987",
        artist:"Martee Lebow",
        genre: "Rock",
        label: "Atlantic",
        quality: "Great",
        price_per_day: 1.50,
        user: user5,
        dimension: dimensions1
      )

vin_9 =Vinyl.create(name: "Let It Be",
            year: "1986",
            artist: "The Beatles",
            genre: "Rock",
            label: "Parlophone",
            quality: "Good",
            price_per_day: 1.00,
            user: user3,
            dimension: dimensions1
            )

vin_10 =Vinyl.create(name: "En Elsker",
            year: "1986",
            artist: "Marquis De Sade, Anne Linnet",
            genre: "Rock",
            label: "CBS",
            quality: "New",
            price_per_day: 1.00,
            user: user5,
            dimension: dimensions1
            )

Vinyl.create(name: "Break Every Rule",
            year: "1986",
            artist: "Tina Turner",
            genre: "Rock",
            label: "Capitol Records",
            quality: "Good",
            price_per_day: 2.00,
            user: user4,
            dimension: dimensions1
            )


Vinyl.create(name: "Det Flyvende Tæppe",
            year: "1990",
            artist: "Danseorkestret",
            genre: "Rock",
            label: "Virgin",
            quality: "Good",
            price_per_day: 1.00,
            user: user4,
            dimension: dimensions1
            )

Vinyl.create(name: "Lifeline",
            year: "1976",
            artist: "Pablo Cruise",
            genre: "Rock",
            label: "A&M Records",
            quality: "Good",
            price_per_day: 1.00,
            user: user4,
            dimension: dimensions1
            )

Vinyl.create(name: "Live At Last",
            year: "1977",
            artist: "Bette Midler",
            genre: "Jazz",
            label: "Atlantic",
            quality: "Poor",
            price_per_day: 0.50,
            user: user4,
            dimension: dimensions1
            )
p "-------------"
p "*************************"
p "******  Demo USER  ******"
p "*************************"

############### Seeds USER for Demo ###################
# Users Vinyls
p "-------------"
p "Demo USER's Vinyls creation"
vin_20 = Vinyl.create(name: "Highly Evolved",
            year:"2017",
            artist:"The Vines",
            genre: "Rock",
            label: "Motown",
            quality: "Good",
            price_per_day: 2.00,
            user: user,
            dimension: dimensions1
      )

vin_21 = Vinyl.create(name: "Live At Last",
            year: "1977",
            artist: "Bette Midler",
            genre: "Jazz",
            label: "Atlantic",
            quality: "Poor",
            price_per_day: 0.50,
            user: user,
            dimension: dimensions1
            )

vin_22 = Vinyl.create(name: "Lifeline",
            year: "1976",
            artist: "Pablo Cruise",
            genre: "Rock",
            label: "A&M Records",
            quality: "Good",
            price_per_day: 1.00,
            user: user,
            dimension: dimensions1
            )
            
# User's vinyls under rentals
p "-------------"
p "Demo USER's vinyls under rentals: Rents creation"

Rent.create(
  price: 50,
  start_date: Date.today + 15 ,
  end_date: Date.today + 20,
  vinyl: vin_20,
  user: user2,
  status: "pending approval"
)

Rent.create(
  price: 38,
  start_date: Date.today + 2 ,
  end_date: Date.today + 30,
  vinyl: vin_21,
  user: user4,
  status: "rental to come"
)

Rent.create(
  price: 120.5,
  start_date: Date.today - 60,
  end_date: Date.today - 20,
  vinyl: vin_22,
  user: user3,
  status: "previous rental"
)



# User's rentals
p "-------------"
p "Demo USER's rentals: Rents creation"
Rent.create(
  price: 52.50,
  start_date: Date.today + 15 ,
  end_date: Date.today + 20,
  vinyl: vin_1,
  user: user,
  status: "pending approval"
)

Rent.create(
  price: 86,
  start_date: Date.today + 40 ,
  end_date: Date.today + 60,
  vinyl: vin_2,
  user: user,
  status: "pending approval"
)

Rent.create(
  price: 38,
  start_date: Date.today + 2 ,
  end_date: Date.today + 30,
  vinyl: vin_3,
  user: user,
  status: "rental to come"
)

Rent.create(
  price: 5,
  start_date: Date.today + 6,
  end_date: Date.today + 8,
  vinyl: vin_4,
  user: user,
  status: "rental to come"
)

Rent.create(
  price: 12,
  start_date: Date.today - 10 ,
  end_date: Date.today + 12,
  vinyl: vin_5,
  user: user,
  status: "currently renting"
)

Rent.create(
  price: 26.75,
  start_date: Date.today - 25,
  end_date: Date.today + 3,
  vinyl: vin_6,
  user: user,
  status: "currently renting"
)

Rent.create(
  price: 135.75,
  start_date: Date.today - 90,
  end_date: Date.today - 10,
  vinyl: vin_7,
  user: user,
  status: "previous rental"
)

Rent.create(
  price: 120.5,
  start_date: Date.today - 60,
  end_date: Date.today - 20,
  vinyl: vin_8,
  user: user,
  status: "pending approval"
)

# Rent.create(
#   price: 120.5,
#   start_date: Date.today - 60,
#   end_date: Date.today - 20,
#   vinyl: vin_9,
#   user: user,
#   status: "pending approval"
# )

Rent.create(
  price: 92,
  start_date: Date.today - 60,
  end_date: Date.today - 20,
  vinyl: vin_10,
  user: user,
  status: "previous rental"
)

p "-------------"
p "*************************"
p "****  DB:SEED END !  ****"
p "*************************"

# ["pending approval", "rental to come", "currently renting", "previous rental", "canceled rental" ]
            



            
# Vinyl.create(name: "",
#             year: "",
#             artist: "",
#             genre: "",
#             label: "",
#             quality: "",
#             price_per_day: ,
#             user: user,
#             dimension: dimensions1
#             )

# require 'open-uri'
# require 'nokogiri'
# require "discogs"

# require 'net/http'
# require 'set'

# def working_url?(url, max_redirects=1)
#   response = nil
#   seen = Set.new
#   loop do
#     url = URI.parse(url)
#     break if seen.include? url.to_s
#     break if seen.size > max_redirects
#     seen.add(url.to_s)
#     response = Net::HTTP.new(url.host, url.port).request_head(url.path)
#     if response.kind_of?(Net::HTTPRedirection)
#       url = response['location']
#     else
#       break
#     end
#   end
#   response.kind_of?(Net::HTTPSuccess) && url.to_s
# end

# def new_vinyl (artist_id)
#   quality = ['Poor', 'Good', 'New', 'Great']
#   price_per_day = [1, 1.25, 1.5, 1.75, 2]
#   dimensions1="33 Tours"
#   dimensions2="45 Tours"
#   dimension = [dimensions1, dimensions2]


#   wrapper = Discogs::Wrapper.new("My awesome web app")
#   if (wrapper.get_artist_releases(artist_id).releases.class != nil)
#     p wrapper.get_artist_releases(artist_id).releases.first
#     first_album_id = wrapper.get_artist_releases(artist_id).releases.first.id
#     artist_name = wrapper.get_artist(artist_id).name
#     vinyl_name = wrapper.get_artist_releases(artist_id).releases.first.title
#     url_builder = "#{artist_name.split(" ").join('-')}-#{vinyl_name.split(" ").join('-')}"
#     url = "https://www.discogs.com/#{url_builder}/master/#{first_album_id}"
#     if (working_url?(url))
#       html_file = open(url).read
#       html_doc = Nokogiri::HTML(html_file)
#       html_doc.search('#page_content > div.body > div.image_gallery.image_gallery_large > a > span.thumbnail_center > img').each do |element|
#         @image_url = element.attribute('src')
#       end
#       html_doc.search('#page_content > div.body > div.profile > div:nth-child(3) > a').each do |element|
#         @genre = element.text
#       end
#       html_doc.search('#r5355965 > td.label.has_header > a').each do |element|
#         @label = element.text
#       end
#       Vinyl.create!(name: wrapper.get_artist_releases(artist_id).releases.first.title,
#                 year: wrapper.get_artist_releases(artist_id).releases.first.year,
#                 artist: wrapper.get_artist(artist_id).name,
#                 genre: @genre,
#                 label: @label,
#                 quality: quality.sample,
#                 price_per_day: price_per_day.sample,
#                 user: @users.sample,
#                 dimension: dimension.sample,
#                 image_url: @image_url
#                 )
#     end
#   else
#     return nil
#   end
# end

# new_vinyl(1)
# new_vinyl(2)
# new_vinyl(3)
