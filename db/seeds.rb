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

# Mod 1
Lecture01 = Video.find_or_create_by(name: "Lecture 01 - Hashketball review", description: "Ruby Hashketball review", instructor: "Paul", youtube_id: "MoEwvrb-rHg", length: 60, category: "Mod 1")
Lecture02 = Video.find_or_create_by(name: "Lecture 02 - Hashes and the Internet", description: "Hashes and the Internet", instructor: "Paul", youtube_id: "kf-T5R3_4bI", length: 75, category: "Mod 1")
Lecture03 = Video.find_or_create_by(name: "Lecture 03 - Intro to OOP", description: "Introduction to Object-Oriented Programming", instructor: "Paul", youtube_id: "CFSbF3Y6EG8", length: 71, category: "Mod 1")
Lecture04 = Video.find_or_create_by(name: "Lecture 04 - One to Many Relationships", description: "One to Many Relationship Modeling", instructor: "Paul", youtube_id: "fo1BAe8FrTA", length: 63, category: "Mod 1")
Lecture05 = Video.find_or_create_by(name: "Lecture 05 - Many to Many Relationships", description: "Many to Many Relationship Modeling", instructor: "Paul", youtube_id: "k5DZaHkFiX4", length: 57, category: "Mod 1")
Lecture06 = Video.find_or_create_by(name: "OO My Pets - Part 1", description: "OO My Pets Lab Review", instructor: "Bruno", youtube_id: "KRRymxOiJuE", length: 60, category: "Mod 1")
Lecture06b = Video.find_or_create_by(name: "OO My Pets - Part 2", description: "OO My Pets Lab Review - Part 2", instructor: "Bruno", youtube_id: "56KoAGSaDj0", length: 61, category: "Mod 1")
Lecture07 = Video.find_or_create_by(name: "Lecture 07 - Intro to ORMS", description: "Introduction to Object-Relational Mappers (ORMS)", instructor: "Paul", youtube_id: "mbaXS46YJ0M", length: 26, category: "Mod 1")
Lecture08a = Video.find_or_create_by(name: "Lecture 08 - Coding Challenge Retake Review", description: "Mod 1 Coding Challenge Review", instructor: "Paul", youtube_id: "W4TGqapKdLU", length: 88, category: "Mod 1")
Lecture09 = Video.find_or_create_by(name: "Lecture 09 - ActiveRecord", description: "Introduction to Active Record", instructor: "Paul", youtube_id: "jeRILnBME5A", length: 26, category: "Mod 1")
Lecture10 = Video.find_or_create_by(name: "Lecture 10 - ActiveRecord Associations", description: "ActiveRecord Associations", instructor: "Paul", youtube_id: "XD6kux6VoU4", length: 27, category: "Mod 1")
Lecture11 = Video.find_or_create_by(name: "Lecture 11 - Intro to Testing", description: "Intro to Testing", instructor: "Paul", youtube_id: "4Tsn9CpZ3JU", length: 32, category: "Mod 1")

# Mod 2
Lecture12 = Video.find_or_create_by(name: "Lecture 12 - Intro to internet", description: "Intro to internet", instructor: "Paul", youtube_id: "DBdIdshUmsk", length: 32, category: "Mod 2")

# Mod 3
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
