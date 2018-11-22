puts "destroying models"

[
  Profession,
  User,
  Location,
  Event,
  UserRole,
  Urgency,
  Task,
  Hub,
  Category,
  ResourceAsset,
  TaskVolunteer,
].each(&:destroy_all)

puts "seeding"
# Professions
healthcare = Profession.create name: "healthcare"
construction = Profession.create name: "construction"
administration = Profession.create name: "administration"
general_help = Profession.create name: "general_help"

# Users
a = User.create email:"anna@gmail.com", password: "123456", profession: healthcare, first_name: "Anna", last_name: "Litfin", phone: "12345678"
b = User.create email:"jerrel@gmail.com", password: "123456", profession: administration, first_name: "Jerrel", last_name: "Burney", phone: "12345678"
c = User.create  email:"henri@gmail.com", password: "123456", profession: construction, first_name: "Henri", last_name: "Stenberg", phone: "12345678"
d = User.create  email:"peter@gmail.com", password: "123456", profession: construction, first_name: "Peter", last_name: "Smith", phone: "12345678"
e = User.create  email:"susan@gmail.com", password: "123456", profession: general_help, first_name: "Susan", last_name: "Hanson", phone: "12345678"
f = User.create  email:"georg@gmail.com", password: "123456", profession: general_help, first_name: "Georg", last_name: "Jonsen", phone: "12345678"
g = User.create  email:"janet@gmail.com", password: "123456", profession: healthcare, first_name: "Janet", last_name: "Petersson", phone: "12345678"

# Locations
location_cph = Location.create name: "Copenhagen", lat: 55.6761, lng: 12.5683
location_stockholm = Location.create name: "Stockholm", lat: 59.3293, lng: 18.0686
location_helsinki = Location.create name: "Helsinki", lat: 60.1699, lng: 24.9384
location_gdansk = Location.create name: "Gdansk", lat: 54.3520, lng: 18.6466
location_task_1 = Location.create name: "Ordrup", lat: 55.7631, lng: 12.5794
location_task_2 = Location.create name: "Valby", lat: 55.6617, lng: 12.5168
location_task_3 = Location.create name: "Ballerup", lat: 55.7265, lng: 12.3578
location_task_4 = Location.create name: "Kastrup", lat: 55.6108, lng: 12.6052
location_task_5 = Location.create name: "Hellerup", lat: 55.7367, lng: 12.5692
location_church = Location.create name: "Charlottenlund", lat: 55.7564, lng: 12.5798
location_hospital = Location.create name: "Gentofte Hospital", lat: 55.7392, lng: 12.5476

# Events
event_cph = Event.create name: "Flood in Copenhagen", location: location_cph
event_stockholm = Event.create name: "Blizzard in Stockholm", location: location_stockholm
event_helsinki = Event.create name: "Forest fire in Helsinki area", location: location_helsinki
event_gdansk = Event.create name: "Hail storm in Gdansk", location: location_gdansk
# User roles
coordinator = UserRole.create role: "coordinator", event: event_cph, user: b
volunteer_anna = UserRole.create role: "volunteer", event: event_cph, user: a
volunteer_peter = UserRole.create role: "volunteer", event: event_cph, user: d
volunteer_susan = UserRole.create role: "volunteer", event: event_cph, user: e
volunteer_georg = UserRole.create role: "volunteer", event: event_cph, user: f
volunteer_janet = UserRole.create role: "volunteer", event: event_cph, user: g
volunteer_henri = UserRole.create role: "volunteer", event: event_cph, user: c

# Urgencies
low = Urgency.create name: "low"
medium = Urgency.create name: "medium"
high = Urgency.create name: "high"

# Tasks
task_1 = Task.create name: "Fix the bridge", description: "Traffic lights fallen down, go fix it",
          urgency: high, location: location_task_1, event: event_cph
task_2 = Task.create name: "Help a cat in a tree", description: "Cat in a tree",
          urgency: low, location: location_task_2, event: event_cph
task_3 = Task.create name: "Remove a tree", description: "Remove trees from the street",
          urgency: medium, location: location_task_3, event: event_cph
task_4 = Task.create name: "Pick up food from the church", description: "Pick up food from the kitchen and take to the emergency shelter",
          urgency: low, location: location_task_4, event: event_cph
task_5 = Task.create name: "Fix the roof of a school", description: "The roof is leaking, should be fixed, because of heavy rain",
          urgency: high, location: location_task_5, event: event_cph

# Hubs
emergency_shelter = Hub.create name:"School", location: location_task_5
church = Hub.create name: "Church", location: location_church
hospital = Hub.create name: "Hospital", location: location_hospital

# Categories
water = Category.create name: "Water"
food = Category.create name: "Food"
tool = Category.create name: "Tools"
medical_supply = Category.create name: "Medical supplies"
supply = Category.create name: "Supplies"
vehicle = Category.create name: "Vehicle"
material = Category.create name: "Construction material"
other = Category.create name: "Other"

# ResourceAssets
drinking_water = ResourceAsset.create name: "Water bottles", resourceable: church, category: water
blanket = ResourceAsset.create name: "Blankets", resourceable: hospital, category: supply
car = ResourceAsset.create name: "Truck", resourceable: task_4, category: vehicle
saw = ResourceAsset.create name: "Chainsaw", resourceable: task_3, category: tool
shingles = ResourceAsset.create name: "Shingles", resourceable: church, category: material
sandwich = ResourceAsset.create name: "Sandwiches", resourceable: church, category: food
bandage = ResourceAsset.create name: "Bandages", resourceable: hospital, category: medical_supply

# Task volunteers
task_volunteer_1 = TaskVolunteer.create user: a, task: task_1
task_volunteer_2 = TaskVolunteer.create user: b, task: task_2
task_volunteer_3 = TaskVolunteer.create user: c, task: task_3
task_volunteer_4 = TaskVolunteer.create user: d, task: task_3
task_volunteer_5 = TaskVolunteer.create user: e, task: task_4
task_volunteer_6 = TaskVolunteer.create user: f, task: task_5
task_volunteer_8 = TaskVolunteer.create user: g, task: task_5
task_volunteer_9 = TaskVolunteer.create user: g, task: task_1
task_volunteer_10 = TaskVolunteer.create user: g, task: task_2
task_volunteer_11 = TaskVolunteer.create user: d, task: task_4
task_volunteer_12 = TaskVolunteer.create user: d, task: task_1
task_volunteer_13 = TaskVolunteer.create user: c, task: task_2
task_volunteer_14 = TaskVolunteer.create user: c, task: task_4
task_volunteer_15 = TaskVolunteer.create user: e, task: task_3
task_volunteer_16 = TaskVolunteer.create user: e, task: task_1
task_volunteer_17 = TaskVolunteer.create user: f, task: task_2
task_volunteer_18 = TaskVolunteer.create user: f, task: task_1

puts "done"
