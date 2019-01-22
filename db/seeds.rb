# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ash = User.find_or_create_by(username: "Ash", first_name: "Ashley", last_name: "Zaki", mod: 3)
JC = User.find_or_create_by(username: "jerryjcchang", first_name: "JC", last_name: "Chang", mod: 3)

Lecture34 = Video.find_or_create_by(name: "Lecture 34 - Rails API - Part 1", description: "Rails API - Part 1", instructor: "Ann", url: "https://www.youtube.com/embed/DBX9eWBU1O4", length: 44, category: "Mod 3")
Lecture34_2 = Video.find_or_create_by(name: "Lecture 34 - Rails API - Part 2", description: "Rails API - Part 2", instructor: "Ann", url: "https://www.youtube.com/embed/9PZ8CPi0Ct8", length: 48, category: "Mod 3")
ToyReview = Video.find_or_create_by(name: "Toy Tale Lab Review - Part 1", description: "Review of Toy Tale Lab", instructor: "Will", url: "https://www.youtube.com/embed/q7uR5rfWQKo", length: 32, category: "Mod 3")
ToyReview_2 = Video.find_or_create_by(name: "Toy Tale Lab Review - Part 2", description: "Review of Toy Tale Lab - Part 2", instructor: "Will", url: "https://www.youtube.com/embed/aj4VhM3ydao", length: 49, category: "Mod 3")
ToyReview_3 = Video.find_or_create_by(name: "Toy Tale Lab Review - Part 3", description: "Review of Toy Tale Lab - Part 3", instructor: "Will", url: "https://www.youtube.com/embed/lLN1jj0vD20", length: 26, category: "Mod 3")
