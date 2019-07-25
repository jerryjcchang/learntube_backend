# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cohort = Cohort.find_or_create_by(name: "DC-Web-111918")

Ash = User.find_or_create_by(username: "ash", first_name: "Ashley", last_name: "Zaki", status: "student")
JC = User.find_or_create_by(username: "jc", first_name: "JC", last_name: "Chang", status: "student")
Robin = User.find_or_create_by(username: "robin", first_name: "Robin", last_name: "Kim", status: "student")
Vlad = User.find_or_create_by(username: "vladdydaddy", first_name: "Vlad", last_name: "Deryuzhenko", status: "student")
Anuj = User.find_or_create_by(username: "papanuj", first_name: "Anuj", last_name: "Sharma", status: "student")
Mandy = User.find_or_create_by(username: "mandy", first_name: "Mandy", last_name: "Pilaud", status: "student")
Joe = User.find_or_create_by(username: "joespinelli7", first_name: "Joe", last_name: "Spinelli", status: "student")
Rachel = User.find_or_create_by(username: "rachel", first_name: "Rachel", last_name: "Novick", status: "student")
Kiley = User.find_or_create_by(username: "kiley", first_name: "Kiley", last_name: "Bobbitt", status: "student")
Shinik = User.find_or_create_by(username: "shinik", first_name: "Shinik", last_name: "Cupo", status: "student")
Jonnel = User.find_or_create_by(username: "jonnel", first_name: "Jonnel", last_name: "Benjamin", status: "student")
Ben = User.find_or_create_by(username: "ben", first_name: "Benjamin", last_name: "Addai", status: "student")
Beau = User.find_or_create_by(username: "beau", first_name: "Beau", last_name: "Jepson", status: "student")

User.all.each do |user|
  if !cohort.users.includes(user)
  cohort.users << user
end
# Paul = User.find_or_create_by(username: "paul", first_name: "Paul", last_name: "Nicholsen", status: "instructor")
# Ann = User.find_or_create_by(username: "ann", first_name: "Ann", last_name: "Duong", status: "instructor")
# Will = User.find_or_create_by(username: "will", first_name: "Will", last_name: "Ley", status: "instructor")
# Bruno = User.find_or_create_by(username: "bruno", first_name: "Bruno", last_name: "Garcia", status: "instructor")

# User.find_by(username: "will").update(username: "wley3337")
# User.find_by(username: "paul").update(username: "pnicholsen")
# User.find_by(username: "bruno").update(username: "bgarcia")

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
Lecture13 = Video.find_or_create_by(name: "Lecture 13 - Intro to Sinatra", description: "Intro to Sinatra", instructor: "Paul", youtube_id: "MSsgQtSnaPE", length: 57, category: "Mod 2")
Lecture14 = Video.find_or_create_by(name: "Lecture 14 - Sinatra Forms", description: "Sinatra Forms", instructor: "Paul", youtube_id: "XbalbAIF9-A", length: 58, category: "Mod 2")
Lecture15 = Video.find_or_create_by(name: "Lecture 15 - Sinatra Associations", description: "Sinatra Associations", instructor: "Paul", youtube_id: "OGQR_2V_xF8", length: 54, category: "Mod 2")
Lecture16 = Video.find_or_create_by(name: "Lecture 16 - Rails Intro", description: "Rails Intro", instructor: "Paul", youtube_id: "c2W0vmy4xxU", length: 54, category: "Mod 2")
Lecture17 = Video.find_or_create_by(name: "Lecture 17 - Rails CRUD", description: "Rails CRUD", instructor: "Paul", youtube_id: "C3CkiUfIH5U", length: 73, category: "Mod 2")
Lecture18 = Video.find_or_create_by(name: "Lecture 18 - Rails Associations", description: "Rails Associations", instructor: "Paul", youtube_id: "ZHbVBs-BVn4", length: 58, category: "Mod 2")
Lecture19 = Video.find_or_create_by(name: "Lecture 19 - Rails Validations", description: "Rails Validations", instructor: "Paul", youtube_id: "soySdmzMVpQ", length: 50, category: "Mod 2")
Lecture19a = Video.find_or_create_by(name: "Part 1  - Rails Review Lecture", description: "Rails Review Lecture Part 1", instructor: "Will", youtube_id: "FTO5qSALuwI", length: 58, category: "Mod 2")
Lecture19b = Video.find_or_create_by(name: "Part 2 - Rails Review Lecture", description: "Rails Review Lecture Part 2", instructor: "Will", youtube_id: "qKjyhx6G_PI", length: 50, category: "Mod 2")
Lecture20 = Video.find_or_create_by(name: "Lecture 20 -  Sessions and Cookies", description: " Sessions and Cookies", instructor: "Paul", youtube_id: "YIxOw-ZcqXA", length: 67, category: "Mod 2")
Lecture21 = Video.find_or_create_by(name: "Lecture 21 - CSS Fundamentals", description: "CSS Fundamentals", instructor: "Paul", youtube_id: "lBaipanLES0", length: 59, category: "Mod 2")
Lecture22 = Video.find_or_create_by(name: "Lecture 22 - Authentication", description: "Authentication", instructor: "Paul", youtube_id: "bTCouMImVzs", length: 44, category: "Mod 2")
Lecture23 = Video.find_or_create_by(name: "Lecture 23 - Rails Authorization video", description: "Rails Authorization video", instructor: "Paul", youtube_id: "Yx7ax3R4Ee0", length: 19, category: "Mod 2")

# Mod 3
Lecture24 = Video.find_or_create_by(name: "Lecture 24 - Intro to JS", description: "Intro to Java Script", instructor: "Ann", youtube_id: "VTeYjTJWEx8", length: 72, category: "Mod 3")
Lecture25 = Video.find_or_create_by(name: "Lecture 25 - Functional Programming", description: "Functional Programming", instructor: "Ann", youtube_id: "f_xTNeQuPZE", length: 69, category: "Mod 3")
Lecture26a = Video.find_or_create_by(name: "Part 1 - Intro to the DOM", description: "Intro to the DOM - Part 1", instructor: "Ann", youtube_id: "lLN1jj0vD20", length: 26, category: "Mod 3")
Lecture26b = Video.find_or_create_by(name: "Part 2 - Intro to the DOM", description: "Intro to the DOM - Part 2", instructor: "Ann", youtube_id: "EpGZ0KeNVX0", length: 53, category: "Mod 3")
Lecture28 = Video.find_or_create_by(name: "Lecture 28 - Event Listeners", description: "Event Listeners", instructor: "Ann", youtube_id: "YMFDwiENTgw", length: 74, category: "Mod 3")
Lecture29a = Video.find_or_create_by(name: "Part 1 - DOM Challenge Review", description: "DOM Challenge Review - Part 1", instructor: "Bruno", youtube_id: "Ic-IoN_QI2o", length: 63, category: "Mod 3")
Lecture29b = Video.find_or_create_by(name: "Part 2 - DOM Challenge Review", description: "DOM Challenge Review - Part 2", instructor: "Bruno", youtube_id: "Noeu8ceys6w", length: 42, category: "Mod 3")
Lecture29c = Video.find_or_create_by(name: "Part 3 - DOM Challenge Review", description: "DOM Challenge Review - Part 3", instructor: "Bruno", youtube_id: "bq7iEFSCgNs", length: 37, category: "Mod 3")
Lecture32 = Video.find_or_create_by(name: "Lecture 32 - Intro to Fetch", description: "Intro to Fetch", instructor: "Ann", youtube_id: "qnrJWAbbgIk", length: 58, category: "Mod 3")
Lecture33 = Video.find_or_create_by(name: "Lecture 33 - Single Page Applications", description: "Single Page Applications", instructor: "Ann", youtube_id: "SJSefhxv0eY", length: 86, category: "Mod 3")
Lecture34 = Video.find_or_create_by(name: "Lecture 34 - this", description: "this", instructor: "Ann", youtube_id: "sf5pBNSWqTk", length: 70, category: "Mod 3")
Lecture35 = Video.find_or_create_by(name: "Lecture 35 - OOJS ", description: "OOJS ", instructor: "Ann", youtube_id: "kwGlHRPQej0", length: 37, category: "Mod 3")
Lecture36a = Video.find_or_create_by(name: "Part 1 - Toy-Review", description: "Toy-Review - Part 1", instructor: "Will", youtube_id: "q7uR5rfWQKo", length: 32, category: "Mod 3")
Lecture36b = Video.find_or_create_by(name: "Part 2 - Toy-Review", description: "Toy-Review - Part 2", instructor: "Will", youtube_id: "aj4VhM3ydao", length: 49, category: "Mod 3")
Lecture36c = Video.find_or_create_by(name: "Part 3 - Toy-Review", description: "Toy-Review - Part 3", instructor: "Will", youtube_id: "lLN1jj0vD20", length: 26, category: "Mod 3")
Lecture39a = Video.find_or_create_by(name: "Part 1 - Rails API", description: "Rails API - Part 1", instructor: "Ann", youtube_id: "DBX9eWBU1O4", length: 44, category: "Mod 3")
Lecture39b = Video.find_or_create_by(name: "Part 2 - Rails API", description: "Rails API - Part 2", instructor: "Ann", youtube_id: "9PZ8CPi0Ct8", length: 48, category: "Mod 3")

Video.all.each do |video|
  if cohort.videos.exclude?(video)
  cohort.videos << video
end
# vid1 = UsersVideo.find_or_create_by(user_id: 1, video_id: 2)
# vid2 = UsersVideo.find_or_create_by(user_id: 1, video_id: 1)
# vid3 = UsersVideo.find_or_create_by(user_id: 2, video_id: 2)
# vid4 = UsersVideo.find_or_create_by(user_id: 3, video_id: 6)
# vid5 = UsersVideo.find_or_create_by(user_id: 5, video_id: 6)
# vid6 = UsersVideo.find_or_create_by(user_id: 6, video_id: 1)
# vid7 = UsersVideo.find_or_create_by(user_id: 4, video_id: 3)
