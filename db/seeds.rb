# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rent.destroy_all
Vinyl.destroy_all
User.destroy_all


user = User.create!(email: 'toto@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Georgito", last_name: "Yito", address: "84 boulevard massena, Paris")
user1 = User.create!(email: 'toto1@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Martin", last_name: "Tran", address: "110 avenue de choisy, Paris")
user2 = User.create!(email: 'toto2@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Olivier", last_name: "Calmels", address: "10 rue du mec perdu Paris")
user3 = User.create!(email: 'toto3@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Amal", last_name: "Gouia", address: "10 rue du mec perdu Paris")
user4 = User.create!(email: 'toto4@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Gerom", last_name: "Bretzel", address: "10 rue du mec perdu Paris")
user5 = User.create!(email: 'toto5@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Alex", last_name: "Uchiwa", address: "10 rue du mec perdu Paris")

dimensions1="33 Tours"
dimensions2="45 Tours"

Vinyl.create(name: "Highly Evolved",
         year:"2017",
         artist:"The Vines",
        genre: "Rock",
        label: "Motown",
        quality: "Good",
        price_per_day: 2.00,
        user: user2,
        dimension: dimensions1
      )

Vinyl.create(name:"Jean Sebastien Bach 'Prestige de l'Orgue'",
         year:"1970",
         artist:"Helmut Walcha",
        genre: "Classic",
        label: "Deutsche Grammophon Collection",
        quality: "Good",
        price_per_day: 2.50,
        user: user3,
        dimension: dimensions2
      )


Vinyl.create(name: "Moral Panic",
         year:"2020",
         artist:"Nothing But Thieves",
        genre: "Rock",
        label: "Sony Music",
        quality: "New",
        price_per_day: 3.00,
        user: user4,
        dimension: dimensions1
      )


Vinyl.create(name: "The Temple Of I & I",
         year:"2017",
         artist:"Thievery Corporation",
        genre: "Electronic",
        label: "Eighteenth Street Lounge Music",
        quality: "Good",
        price_per_day: 0.50,
        user: user5,
        dimension: dimensions2
      )

Vinyl.create(name: "I'm In You",
         year:"1977",
         artist:"Peter Frampton",
        genre: "Rock",
        label: "A&M Records",
        quality: "New",
        price_per_day: 1.20,
        user: user2,
        dimension: dimensions1
      )

Vinyl.create(name: "More Miles Per Hour",
         year:"1979",
         artist:"John Miles",
        genre: "Rock",
        label: "Decca",
        quality: "Poor",
        price_per_day: 0.50,
        user: user3,
        dimension: dimensions1
      )

Vinyl.create(name: "Nightwatch",
         year:"1978",
         artist:"Kenny Loggins",
        genre: "Rock",
        label: "Columbia",
        quality: "Very Good",
        price_per_day: 1.50,
        user: user4,
        dimension: dimensions2
      )

Vinyl.create(name: "Love's A Liar",
         year:"1987",
         artist:"Martee Lebow",
        genre: "Rock",
        label: "Atlantic",
        quality: "Great",
        price_per_day: 1.50,
        user: user5,
        dimension: dimensions1
      )

Vinyl.create(name: "Let It Be",
            year: "1986",
            artist: "The Beatles",
            genre: "Rock",
            label: "Parlophone",
            quality: "Good",
            price_per_day: 1.00,
            user: user3,
            dimension: dimensions1
            )

Vinyl.create(name: "En Elsker",
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


require 'open-uri'
require 'nokogiri'

# first_album_id = wrapper.get_artist_releases("329937").releases.first.id
url = "https://www.discogs.com/Manilla-Road-Invasion/master/323447"
html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)
html_doc.search('#page_content > div.body > div.image_gallery.image_gallery_large > a > span.thumbnail_center > img').each do |element|
  puts element.attribute('src')
end
html_doc.search('#page_content > div.body > div.profile > div:nth-child(3) > a').each do |element|
  puts element.text
end

        # genre: "Rock", <-- scrapp it OK
        # label: "Motown", <-- scrapp it OK
        # quality: "Good", <-- assign at random
        # price_per_day: 2.00, <-- assign at random between 1 and 2
        # user: user2, <-- assign at random (user1 - 5)
        # dimension: dimensions1 <-- assign at random (1 and 2)

      <p>Vinyl image: = wrapper.get_artist_releases("329937").releases.first.id</p>
      <p>Vinyl year: = wrapper.get_artist_releases("329937").releases.first.year</p>
      <p>Vinyl name: = wrapper.get_artist_releases("329937").releases.first.title</p>
      <p>Artist name: = wrapper.get_artist("329937").name</p>

# Vinyl.create(name: wrapper.get_artist_releases("329937").releases.first.title,
#             year: wrapper.get_artist_releases("329937").releases.first.year,
#             artist: wrapper.get_artist("329937").name,
#             genre: "",
#             label: "",
#             quality: "",
#             price_per_day: ,
#             user: user,
#             dimension: dimensions1
#             )
