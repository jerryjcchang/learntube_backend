# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ash = User.find_or_create_by(username: "Ash", first_name: "Ashley", last_name: "Zaki", status: "student")
JC = User.find_or_create_by(username: "jerryjcchang", first_name: "JC", last_name: "Chang", status: "student")
Robin = User.find_or_create_by(username: "robin", first_name: "Robin", last_name: "Kim", status: "student")
Vlad = User.find_or_create_by(username: "vladydaddy", first_name: "Vlad", last_name: "Chang", status: "student")
Paul = User.find_or_create_by(username: "paul", first_name: "Paul", last_name: "Chang", status: "instructor")
Ann = User.find_or_create_by(username: "ann", first_name: "Ann", last_name: "Doung", status: "instructor")


Lecture01 = Video.find_or_create_by(name: "Lecture 01 - Hashketball review", description: "Ruby Hashketball review", instructor: "Paul", youtube_id: "MoEwvrb-rHg", length: 60, category: "Mod 1")
Lecture12 = Video.find_or_create_by(name: "Lecture 12 - Intro to internet", description: "Intro to internet", instructor: "Paul", youtube_id: "DBdIdshUmsk", length: 32, category: "Mod 2")
ToyReview = Video.find_or_create_by(name: "Toy Tale Lab Review - Part 1", description: "Review of Toy Tale Lab", instructor: "Will", youtube_id: "q7uR5rfWQKo", length: 32, category: "Mod 3")
ToyReview_2 = Video.find_or_create_by(name: "Toy Tale Lab Review - Part 2", description: "Review of Toy Tale Lab - Part 2", instructor: "Will", youtube_id: "aj4VhM3ydao", length: 49, category: "Mod 3")
ToyReview_3 = Video.find_or_create_by(name: "Toy Tale Lab Review - Part 3", description: "Review of Toy Tale Lab - Part 3", instructor: "Will", youtube_id: "lLN1jj0vD20", length: 26, category: "Mod 3")
Lecture34 = Video.find_or_create_by(name: "Lecture 34 - Rails API - Part 1", description: "Rails API - Part 1", instructor: "Ann", youtube_id: "DBX9eWBU1O4", length: 44, category: "Mod 3")
Lecture34_2 = Video.find_or_create_by(name: "Lecture 34 - Rails API - Part 2", description: "Rails API - Part 2", instructor: "Ann", youtube_id: "9PZ8CPi0Ct8", length: 48, category: "Mod 3")

vid1 = UsersVideo.find_or_create_by(user_id: 1, video_id: 2)
vid2 = UsersVideo.find_or_create_by(user_id: 1, video_id: 1)
vid3 = UsersVideo.find_or_create_by(user_id: 2, video_id: 2)
vid4 = UsersVideo.find_or_create_by(user_id: 3, video_id: 6)
vid5 = UsersVideo.find_or_create_by(user_id: 5, video_id: 6)
vid6 = UsersVideo.find_or_create_by(user_id: 6, video_id: 1)
vid7 = UsersVideo.find_or_create_by(user_id: 4, video_id: 3)
