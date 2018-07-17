# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#clear the table before we seed

Crafter.destroy_all

Crafter.create!([{
            crafter_class: "Blacksmith",
            short_name: "BSM",
            img: "https://ffxiv.gamerescape.com/w/images/a/ab/Blacksmith_Icon_10.5.png"
        },
        {
            crafter_class: "Alchemist",
            short_name: "ALC",
            img: "https://ffxiv.gamerescape.com/w/images/c/c2/Alchemist_Icon_10.5.png"
        },
        {
            crafter_class: "Armorer",
            short_name: "ARM",
            img: "https://ffxiv.gamerescape.com/w/images/6/6e/Armorer_Icon_10.5.png"
        },
        {
            crafter_class: "Carpenter",
            short_name: "CRP",
            img: "https://ffxiv.gamerescape.com/w/images/9/99/Carpenter_Icon_10.5.png"
        },
        {
            crafter_class: "Culinarian",
            short_name: "CUL",
            img: "https://ffxiv.gamerescape.com/w/images/f/f2/Culinarian_Icon_10.5.png"
        },
        {
            crafter_class: "Goldsmith",
            short_name: "GSM",
            img: "https://ffxiv.gamerescape.com/w/images/d/de/Goldsmith_Icon_10.5.png"
        },
        {
            crafter_class: "Leatherworker",
            short_name: "LTW",
            img: "https://ffxiv.gamerescape.com/w/images/a/a7/Leatherworker_Icon_10.5.png"
        },
        {
            crafter_class: "Weaver",
            short_name: "WVR",
            img: "https://ffxiv.gamerescape.com/w/images/8/89/Weaver_Icon_10.5.png"
        }])

puts "Created #{Crafter.count} crafter class"

            