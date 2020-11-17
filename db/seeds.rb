# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Vinyl.destroy_all
User.destroy_all


user1 = User.create!(email: 'toto@yahoo.fr', password: 'abcdef', password_confirmation: 'abcdef')

dimensions1="33 tours"
dimensions2="45 tours"

vinyl1 = Vinyl.create(name: "Highly Evolved",
         year:"2017",
         artist:"The Vines",
        genre: "Rock",
        label: "Motown",
        quality: "good",
        price_per_day: 2,
        user: user1,
        dimension: dimensions1
      )

vinyl2 = Vinyl.create(name:"Jean Sebastien Bach 'Prestige de l'Orgue'",
         year:"1970",
         artist:"Helmut Walcha",
        genre: "Classic",
        label: "Deutsche Grammophon Collection",
        quality: "good",
        price_per_day: 2,
        user: user1,
        dimension: dimensions2
      )


Vinyl.create(name: "Highly Evolved 2",
         year:"2017",
         artist:"The Vines",
        genre: "Rock",
        label: "Motown",
        quality: "good",
        price_per_day: 2,
        user: user1,
        dimension: dimensions1
      )

Vinyl.create(name: "Highly Evolved 3",
         year:"2017",
         artist:"The Vines",
        genre: "Rock",
        label: "Motown",
        quality: "good",
        price_per_day: 2,
        user: user1,
        dimension: dimensions1
      )

Vinyl.create(name: "Highly Evolved 4",
         year:"2017",
         artist:"The Vines",
        genre: "Rock",
        label: "Motown",
        quality: "good",
        price_per_day: 2,
        user: user1,
        dimension: dimensions1
      )
