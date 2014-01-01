# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "clearing data in users table"

User.destroy_all
puts "adding dummy data for users table"

users = [
        {
          email: "abc@gmail.com",
          password: "test123abc",
          name: "Cam",
          profile_pic: "http://facebookcraze.com/wp-content/uploads/2009/12/funny_picture_for_a_facebook_prank.jpg",
          goal: "137",
          deadline: "March 15th"
        },

        {
          email: "abd@gmail.com",
          password: "test123abc",
          name: "dan",
          profile_pic: "http://www.mancertified.com/wp-content/uploads/2012/01/Funny-Russian-people-profile-pics01.jpg",
          goal: "178",
          deadline: "End of the year"
        },

        {
          email: "abe@gmail.com",
          password: "test123abc",
          name: "Evan",
          profile_pic: "http://1.bp.blogspot.com/-OeBiXipwTIQ/UShnONZaJ1I/AAAAAAAABdo/ML_TOGkRWp8/s1600/funny-bluetooth-man11.jpg",
          goal: "190",
          deadline: "My Birthday"
        },

        {
          email: "abf@gmail.com",
          password: "test123abc",
          name: "Fred",
          profile_pic: "http://buymelaughs.com/wp-content/uploads/2013/12/Funny-Inspirational-quotes-14.jpg",
          goal: "205",
          deadline: "January 1st"
        }
]

users.each do |user|
  User.create(name:user[:name], password:user[:password], email:user[:email], profile_pic:user[:profile_pic], goal:user[:goal], deadline:user[:deadline])
end

puts "added dummy data for users"
puts "destroy weight data"

Weight.destroy_all
weights = [
       
          {
            pounds: "189",
            user_id: 1,
            date: "2013-12-22"
          },
          {
            pounds: "188",
            user_id: 1,
            date: "2013-12-23"
          },
          {
            pounds: "186",
            user_id: 1,
            date: "2013-12-24"
          },
          {
            pounds: "185",
            user_id: 1,
            date: "2013-12-25"
          }
        
]

weights.each do |weight|
  Weight.create(pounds:weight[:pounds], user_id:weight[:user_id], date:weight[:date])
end

puts "add weight dummy data"

puts "destroy following data"

Following.destroy_all

friends = [
          {
            user_id: 2,
            followed_id: 1
          },
          {
            user_id: 1,
            followed_id: 2
          },{
            user_id: 1,
            followed_id: 3
          },
          {
            user_id: 3,
            followed_id: 1
          },
          {
            user_id: 4,
            followed_id: 1
          },
          {
            user_id: 1,
            followed_id: 4
          },
          {
            user_id: 2,
            followed_id: 3
          },
          {
            user_id: 3,
            followed_id: 2
          },
]

friends.each do |friend|
  Following.create(user_id:friend[:user_id], followed_id:friend[:followed_id])
end

puts "friends created"