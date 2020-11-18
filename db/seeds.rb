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


user1 = User.create!(email: 'toto@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef', first_name: "Georgito", last_name: "Yito", address: "16 Villa Gaudelet, Paris")
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
         artist:"Kenny Loggins8",
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
