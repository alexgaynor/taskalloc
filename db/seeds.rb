# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'faker'

User.delete_all
Group.delete_all
Task.delete_all

group_types = ['friends', 'family', 'roommates', 'work buddies', 'event planners']
roles = ['friend', 'daughter', 'mom', 'dad', 'sister', 'brother']
boolean = [true, false]
priorities = ['low', 'medium', 'high']
categories = ['chore', 'pick-up', 'grocery', 'todo']
photos = ['http://photos2.meetupstatic.com/photos/member/a/7/c/member_10382684.jpeg', 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/1475/li-omardelarosa.jpg', 'https://d3o09jpaxs6yh2.cloudfront.net/production/assets/people/wdi/andrew-madden-3033a86f0ab489c5c3a008d75380156e.jpg']
groups_arr = []
users_arr = []
tasks_arr = []

roomies = Group.create(
        name: "BFF Roomies",
        description: Faker::Lorem.sentences(1).join(" "),
        address_street: "10 East 21st Street",
        address_zipcode: "10010",
        address_state: "NY",
        group_type: "roommates"


)

alex = User.create(
        email: "agaynor72@gmail.com",
        password: "password",
        username: "g_Force",
        firstname: "Alex",
        lastname: "Gaynor",
        phone_num: "2039623044"
)
john = User.create(
        email: "phoenixz720@gmail.com",
        password: "password",
        username: "shadymilkman",
        firstname: "John",
        lastname: "Wilsterman",
        phone_num: Faker::PhoneNumber.phone_number
)
sunmi = User.create(
         email: "ohsun14@gmail.com",
         password: "password",
         username: "ohsun",
         firstname: "Sunmi",
         lastname: "Oh",
         phone_num:" 5165102275"
        )
alex.groups << roomies
john.groups << roomies
sunmi.groups << roomies

groceries = Task.create(
        name: "Pick up groceries",
        description: "Pick up milk, eggs, cheese, onions, and carrots",
        task_location: Faker::Address.street_address,
        end_location: roomies.address_street,
        estimated_time: 123,
        total_time: 234,
        started: true,
        completed: false,
        creator_id: sunmi.id,
        owner_id: alex.id,
        passes: 0,
        group_id: roomies.id,
        priority: priorities[rand(0..2)],        
        category: categories[rand(0..3)],
        karma_value: 40,
        accepted_time: 123456,
        completed_time: 456789,
        cost: 50
)
clean = Task.create(
        name: "Clean the apartment",
        description: "Clean the kitchen and tv room",
        task_location: roomies.address_street,
        end_location: roomies.address_street,
        estimated_time: 123,
        total_time: 234,
        started: true,
        completed: false,
        creator_id: alex.id,
        owner_id: john.id,
        passes: 0,
        group_id: roomies.id,
        priority: priorities[rand(0..2)],        
        category: categories[rand(0..3)],
        karma_value: 60,
        accepted_time: 123456,
        completed_time: 456789,
        cost: 80
)
pickup_supplies = Task.create(
        name: "Clean the apartment",
        description: "Clean the kitchen and tv room",
        task_location: roomies.address_street,
        end_location: roomies.address_street,
        estimated_time: 123,
        total_time: 234,
        started: true,
        completed: false,
        creator_id: alex.id,
        owner_id: john.id,
        passes: 0,
        group_id: roomies.id,
        priority: priorities[rand(0..2)],        
        category: categories[rand(0..3)],
        karma_value: 60,
        accepted_time: 123456,
        completed_time: 456789,
        cost: 80
)
