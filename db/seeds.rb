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

professions = []
users = []
locations = []
events = []
user_roles = []
urgencies = []
tasks = []
hubs = []
categories = []
resource_assets = []
task_volunteers = []

# Professions
professions << Profession.create(name: "healthcare")
professions << Profession.create(name: "construction")
professions << Profession.create(name: "administration")
professions << Profession.create(name: "general_help")

# Users
users << User.create(email:"anna@gmail.com", password: "123456", profession: professions[0], first_name: "Anna", last_name: "Litfin", phone: "12345678")
users << User.create(email:"jerrel@gmail.com", password: "123456", profession: professions[2], first_name: "Jerrel", last_name: "Burney", phone: "12345678")
users << User.create(email:"henri@gmail.com", password: "123456", profession: professions[1], first_name: "Henri", last_name: "Stenberg", phone: "12345678")
users << User.create(email:"peter@gmail.com", password: "123456", profession: professions[1], first_name: "Peter", last_name: "Smith", phone: "12345678")
users << User.create(email:"susan@gmail.com", password: "123456", profession: professions[3], first_name: "Susan", last_name: "Hanson", phone: "12345678")
users << User.create(email:"georg@gmail.com", password: "123456", profession: professions[3], first_name: "Georg", last_name: "Jonsen", phone: "12345678")
users << User.create(email:"janet@gmail.com", password: "123456", profession: professions[0], first_name: "Janet", last_name: "Petersson", phone: "12345678")

# Locations
locations << Location.create(name: "Copenhagen", lat: 55.6761, lng: 12.5683)
locations << Location.create(name: "Ordrup", lat: 55.7631, lng: 12.5794)
locations << Location.create(name: "Valby", lat: 55.6617, lng: 12.5168)
locations << Location.create(name: "Ballerup", lat: 55.7265, lng: 12.3578)
locations << Location.create(name: "Kastrup", lat: 55.6108, lng: 12.6052)
locations << Location.create(name: "Hellerup School", lat: 55.7367, lng: 12.5692)
locations << Location.create(name: "Charlottenlund Church", lat: 55.7564, lng: 12.5798)
locations << Location.create(name: "Gentofte Hospital", lat: 55.7392, lng: 12.5476)
locations << Location.create(name: "Stockholm", lat: 59.3293, lng: 18.0686)
locations << Location.create(name: "Helsinki", lat: 60.1699, lng: 24.9384)
locations << Location.create(name: "Gdansk", lat: 54.3520, lng: 18.6466)

# Events
events << Event.create(name: "Flood in Copenhagen", location: locations[0])
events << Event.create(name: "Blizzard in Stockholm", location: locations[8])
events << Event.create(name: "Forest fire in Helsinki area", location: locations[9])
events << Event.create(name: "Hail storm in Gdansk", location: locations[10])

# User roles
user_roles << UserRole.create(role: "coordinator", event: events[0], user: users[1])
user_roles << UserRole.create(role: "volunteer", event: events[0], user: users[0])
user_roles << UserRole.create(role: "volunteer", event: events[0], user: users[3])
user_roles << UserRole.create(role: "volunteer", event: events[0], user: users[4])
user_roles << UserRole.create(role: "volunteer", event: events[0], user: users[5])
user_roles << UserRole.create(role: "volunteer", event: events[0], user: users[6])
user_roles << UserRole.create(role: "volunteer", event: events[0], user: users[2])

# Urgencies
urgencies << Urgency.create(name: "low")
urgencies << Urgency.create(name: "medium")
urgencies << Urgency.create(name: "high")

# Tasks
tasks << Task.create(name: "Fix the bridge", description: "Traffic lights fallen down, go fix it",
          urgency: urgencies[2], location: locations[1], event: events[0], status: "Pending")
tasks << Task.create(name: "Help a cat in a tree", description: "Cat in a tree",
          urgency: urgencies[0], location: locations[2], event: events[0], status: "Pending")
tasks << Task.create(name: "Remove a tree", description: "Remove trees from the street",
          urgency: urgencies[1], location: locations[3], event: events[0], status: "In progress")
tasks << Task.create(name: "Pick up food from the church", description: "Pick up food from the kitchen and take to the emergency shelter",
          urgency: urgencies[0], location: locations[4], event: events[0], status: "n progress")
tasks << Task.create(name: "Fix the roof of a school", description: "The roof is leaking, should be fixed, because of heavy rain",
          urgency: urgencies[2], location: locations[5], event: events[0], status: "n progress")
tasks << Task.create(name: "Car in a ditch", description: "Driver would need help to get the car back to a road",
          urgency: urgencies[0], location: locations[3], event: events[0], status: "Pending")
tasks << Task.create(name: "Ten people waiting to get a lift", description: "People looking for a transport to get to the emergency shelter",
          urgency: urgencies[1], location: locations[2], event: events[0], status: "Done")
tasks << Task.create(name: "Water in a cellar", description: "Somebody would need help to pump water out of the cellar",
          urgency: urgencies[1], location: locations[4], event: events[0], status: "Done")
tasks << Task.create(name: "Boat leaking", description: "Emergency service boat got hit and is leaking and would have to be transported to a service",
          urgency: urgencies[2], location: locations[1], event: events[0], status: "Done")

# Hubs
hubs << Hub.create(name: "School / Emergency Shelter", location: locations[5])
hubs << Hub.create(name: "Church", location: locations[6])
hubs << Hub.create(name: "Hospital", location: locations[7])

# Categories
categories << Category.create(name: "Water")
categories << Category.create(name: "Food")
categories << Category.create(name: "Tools")
categories << Category.create(name: "Medical supplies")
categories << Category.create(name: "Supplies")
categories << Category.create(name: "Vehicle")
categories << Category.create(name: "Construction material")
categories << Category.create(name: "Other")

# ResourceAssets
resource_assets << ResourceAsset.create(name: "Water bottles", resourceable: hubs[1], category: categories[0])
resource_assets << ResourceAsset.create(name: "Blankets", resourceable: hubs[2], category: categories[4])
resource_assets << ResourceAsset.create(name: "Truck", resourceable: tasks[3], category: categories[5])
resource_assets << ResourceAsset.create(name: "Chainsaw", resourceable: tasks[2], category: categories[2])
resource_assets << ResourceAsset.create(name: "Shingles", resourceable: hubs[1], category: categories[6])
resource_assets << ResourceAsset.create(name: "Sandwiches", resourceable: hubs[1], category: categories[1])
resource_assets << ResourceAsset.create(name: "Bandages", resourceable: hubs[2], category: categories[3])

# Task volunteers
task_volunteers << TaskVolunteer.create(user: users[0], task: tasks[0])
task_volunteers << TaskVolunteer.create(user: users[1], task: tasks[1])
task_volunteers << TaskVolunteer.create(user: users[2], task: tasks[2])
task_volunteers << TaskVolunteer.create(user: users[3], task: tasks[2])
task_volunteers << TaskVolunteer.create(user: users[4], task: tasks[3])
task_volunteers << TaskVolunteer.create(user: users[5], task: tasks[4])
task_volunteers << TaskVolunteer.create(user: users[6], task: tasks[4])
task_volunteers << TaskVolunteer.create(user: users[6], task: tasks[0])
task_volunteers << TaskVolunteer.create(user: users[6], task: tasks[1])
task_volunteers << TaskVolunteer.create(user: users[3], task: tasks[3])
task_volunteers << TaskVolunteer.create(user: users[3], task: tasks[0])
task_volunteers << TaskVolunteer.create(user: users[2], task: tasks[1])
task_volunteers << TaskVolunteer.create(user: users[2], task: tasks[3])
task_volunteers << TaskVolunteer.create(user: users[4], task: tasks[2])
task_volunteers << TaskVolunteer.create(user: users[4], task: tasks[0])
task_volunteers << TaskVolunteer.create(user: users[5], task: tasks[1])
task_volunteers << TaskVolunteer.create(user: users[5], task: tasks[0])


puts "done"
