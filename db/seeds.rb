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
professions << Profession.create!(name: "healthcare")
professions << Profession.create!(name: "construction")
professions << Profession.create!(name: "administration")
professions << Profession.create!(name: "general help")

# Users
users << User.create!(email:"susan@gmail.com", password: "123456", profession: professions[0], first_name: "Susan", last_name: "Hanson", phone: "45 35 64 32 78")
users << User.create!(email:"jerrel@gmail.com", password: "123456", profession: professions[2], first_name: "Jerrel", last_name: "Burney", phone: "45 54 24 32 43")
users << User.create!(email:"henri@gmail.com", password: "123456", profession: professions[1], first_name: "Henri", last_name: "Stenberg", phone: "45 88 25 86 52")
users << User.create!(email:"peter@gmail.com", password: "123456", profession: professions[1], first_name: "Peter", last_name: "Smith", phone: "45 35 64 32 78")
users << User.create!(email:"anna@gmail.com", password: "123456", profession: professions[2], first_name: "Anna", last_name: "Litfin", phone: "45 88 25 86 52")
users << User.create!(email:"georg@gmail.com", password: "123456", profession: professions[3], first_name: "Georg", last_name: "Jonsen", phone: "45 35 64 32 78")
users << User.create!(email:"janet@gmail.com", password: "123456", profession: professions[0], first_name: "Janet", last_name: "Peterson", phone: "45 54 24 32 43")
users << User.create!(email:"mark@gmail.com", password: "123456", profession: professions[2], first_name: "Mark", last_name: "Smith", phone: "45 88 25 86 52")
users << User.create!(email:"janina@gmail.com", password: "123456", profession: professions[1], first_name: "Janina", last_name: "Hansen", phone: "45 88 25 86 52")
users << User.create!(email:"flaming@gmail.com", password: "123456", profession: professions[3], first_name: "Fleming", last_name: "Carter", phone: "45 35 64 32 78")
users << User.create!(email:"anette@gmail.com", password: "123456", profession: professions[1], first_name: "Anette", last_name: "Mehlig", phone: "45 54 24 32 43")
users << User.create!(email:"marko@gmail.com", password: "123456", profession: professions[2], first_name: "Marko", last_name: "Meyer", phone: "45 88 25 86 52")
users << User.create!(email:"john@gmail.com", password: "123456", profession: professions[0], first_name: "John", last_name: "Stenberg", phone: "45 35 64 32 78")
users << User.create!(email:"morten@gmail.com", password: "123456", profession: professions[2], first_name: "Morten", last_name: "Suhr", phone: "45 88 25 86 52")
users << User.create!(email:"ivone@gmail.com", password: "123456", profession: professions[0], first_name: "Ivone", last_name: "Feer", phone: "45 54 24 32 43")

# Locations
locations << Location.create!(name: "Copenhagen", latitude: 55.6761, longitude: 12.5683)  #0
locations << Location.create!(name: "Ordrup", latitude: 55.7631, longitude: 12.5794)      #1
locations << Location.create!(name: "Valby", latitude: 55.6617, longitude: 12.5168)       #2
locations << Location.create!(name: "Ballerup", latitude: 55.7265, longitude: 12.3578)    #3
locations << Location.create!(name: "Kastrup", latitude: 55.6108, longitude: 12.6052)     #4
locations << Location.create!(name: "Hellerup School", latitude: 55.7367, longitude: 12.5692) #5
locations << Location.create!(name: "Charlottenlund Church", latitude: 55.7564, longitude: 12.5798) #6
locations << Location.create!(name: "Gentofte Hospital", latitude: 55.7392, longitude: 12.5476) #7
locations << Location.create!(name: "Stockholm", latitude: 59.3293, longitude: 18.0686) #8
locations << Location.create!(name: "Helsinki", latitude: 60.1699, longitude: 24.9384)  #9
locations << Location.create!(name: "Gdansk", latitude: 54.3520, longitude: 18.6466)  #10
locations << Location.create!(name: "Øster Farimagsgade 16", latitude: 55.690378, longitude: 12.575274) #11
locations << Location.create!(name: "Telia Parken Stadium, Per Henrik Lings Allé 2, 2100 København", latitude: 55.702881, longitude: 12.570290) #12
locations << Location.create!(name: "City Hall, København Kommune, Rådhuspladsen 1, 1550 København", latitude: 55.675616, longitude: 12.569483) #13
locations << Location.create!(name: "Copenhagen Business School, Solbjerg Pl. 3, 2000 Frederiksberg", latitude: 55.681430, longitude: 12.529953)  #14
locations << Location.create!(name: "Nørrebrohallen Sports Complex, Nørrebrogade 208, 2200 København", latitude: 55.700021, longitude: 12.543457) #15
locations << Location.create!(name: "Blegdamsvej 9, 2100 København", latitude: 55.695894, longitude: 12.566729) #16
locations << Location.create!(name: "Fredens Kirke, Ryesgade 68B, 2100 København", latitude: 55.694611, longitude: 12.571438) #17
locations << Location.create!(name: "Gefiion Gymnasium, Øster Voldgade 10, 1350 København", latitude: 55.688290, longitude: 12.582121) #18




# Events
events << Event.create!(name: "Flood in Copenhagen", location: locations[0])
events << Event.create!(name: "Blizzard in Stockholm", location: locations[8])
events << Event.create!(name: "Forest fire in Helsinki area", location: locations[9])
events << Event.create!(name: "Hail storm in Gdansk", location: locations[10])

# User roles
user_roles << UserRole.create!(role: "coordinator", event: events[0], user: users[1])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[0])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[3])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[4])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[5])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[6])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[2])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[7])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[8])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[9])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[10])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[11])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[12])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[13])
user_roles << UserRole.create!(role: "volunteer", event: events[0], user: users[14])
# Urgencies
urgencies << Urgency.create!(name: "low")
urgencies << Urgency.create!(name: "medium")
urgencies << Urgency.create!(name: "high")

# Tasks
tasks << Task.create!(name: "Fix the bridge", description: "Traffic lights fallen down, go fix it",
          urgency: urgencies[2], location: locations[1], event: events[0]) #0
tasks << Task.create!(name: "Help a cat in a tree", description: "Cat in a tree",
          urgency: urgencies[0], location: locations[2], event: events[0])#1
tasks << Task.create!(name: "Fallen tree", description: "Remove trees from the street",
          urgency: urgencies[1], location: locations[3], event: events[0], status: "in progress")
tasks << Task.create!(name: "Food Distribution", description: "Pick up food from the church food pantry and deliver to the emergency shelter",
          urgency: urgencies[0], location: locations[4], event: events[0], status: "in progress")
tasks << Task.create!(name: "Roof Repair at Elementary School", description: "The roof is leaking, should be fixed, because of heavy rain",
          urgency: urgencies[2], location: locations[5], event: events[0], status: "in progress")
tasks << Task.create!(name: "Vehicle stuck in ditch", description: "Caution! 4-door sedan needs to be pulled out of ditch and towed. Driver expecting call to help get car on tow",
          urgency: urgencies[0], location: locations[3], event: events[0])#5
tasks << Task.create!(name: "Ten people waiting to get a lift", description: "People looking for a transport to get to the emergency shelter",
          urgency: urgencies[1], location: locations[2], event: events[0], status: "done")
tasks << Task.create!(name: "Water in a cellar", description: "Somebody would need help to pump water out of the cellar",
          urgency: urgencies[1], location: locations[4], event: events[0], status: "done")
tasks << Task.create!(name: "Boat leaking", description: "Emergency service boat got hit and is leaking and would have to be transported to a service",
          urgency: urgencies[2], location: locations[1], event: events[0], status: "done")
tasks << Task.create!(name: "Mold Remediation", description: "Residential building, Spores of mold in cellar, needs porper remediation ",
          urgency: urgencies[2], location: locations[1], event: events[0], status: "in progress")
tasks << Task.create!(name: "Clear Cellar", description: "Damaged furniture in the cellar needs to be cleared out. All items should go in blue dumpster.",
          urgency: urgencies[2], location: locations[11], event: events[0], status: "in progress")
tasks << Task.create!(name: "Mold Remediation", description: "Spores of mold in cellar of multi-dwelling unit",
          urgency: urgencies[2], location: locations[1], event: events[0], status: "in progress")
tasks << Task.create!(name: "Mold Remediation", description: "Spores of mold in cellar of single-detached home",
          urgency: urgencies[2], location: locations[1], event: events[0], status: "in progress")
tasks << Task.create!(name: "Clear Debris", description: "Water damaged office furniture in basement office needs to be cleared out. All items should go into commercial dumpster.",
          urgency: urgencies[2], location: locations[11], event: events[0], status: "done")
tasks << Task.create!(name: "Fallen scaffolding", description: "A scaffold has collapsed and structural debris needs to be cleared.",
          urgency: urgencies[2], location: locations[11], event: events[0])
tasks << Task.create!(name: "Photo Survey", description: "Survey the area. Drive around and take photos of debris or visible structural damage.",
          urgency: urgencies[2], location: locations[11], event: events[0])


# Hubs
hubs << Hub.create!(name: "City Hall Square, København Kommune", location: locations[13])
hubs << Hub.create!(name: "Emergency Shelter at Gefion Gymnasium", location: locations[18])
hubs << Hub.create!(name: "Fredens Kirke", location: locations[17])
hubs << Hub.create!(name: "Gentofte Hospital", location: locations[7])
hubs << Hub.create!(name: "Telia Parken Stadium", location: locations[12])
hubs << Hub.create!(name: "Copenhagen Business School", location: locations[14])
hubs << Hub.create!(name: "Nørrebrohallen Sports Complex", location: locations[15])
hubs << Hub.create!(name: "Rigshospitalet", location: locations[16])
hubs << Hub.create!(name: "Church", location: locations[6])
hubs << Hub.create!(name: "Emergency Shelter at Gefion Gymnasium", location: locations[5])





# Categories
categories << Category.create!(name: "Water") #0
categories << Category.create!(name: "Food") #1
categories << Category.create!(name: "Tools")#2
categories << Category.create!(name: "Medical supplies") #3
categories << Category.create!(name: "Supplies") #4
categories << Category.create!(name: "Vehicle") #5
categories << Category.create!(name: "Construction material") #6
categories << Category.create!(name: "Cleaning supplies") #7
categories << Category.create!(name: "Other") #8

# ResourceAssets
resource_assets << ResourceAsset.create!(name: "Pick-up Truck", resourceable: tasks[3], location: tasks[3].location, category: categories[5])
resource_assets << ResourceAsset.create!(name: "Water bottles", resourceable: hubs[9], location: hubs[9].location, category: categories[0])
resource_assets << ResourceAsset.create!(name: "Cargo-van", resourceable: tasks[3], location: tasks[3].location, category: categories[5])
resource_assets << ResourceAsset.create!(name: "Sleeping Bags", location: hubs[7].location, category: categories[4])
resource_assets << ResourceAsset.create!(name: "Blankets", resourceable: hubs[2], location: hubs[2].location, category: categories[4])
resource_assets << ResourceAsset.create!(name: "Mini-van", location: tasks[3].location, category: categories[5])
resource_assets << ResourceAsset.create!(name: "Tow Truck", location: tasks[5].location, category: categories[5])
resource_assets << ResourceAsset.create!(name: "SUV: Seats 7", location: tasks[12].location, category: categories[5])
resource_assets << ResourceAsset.create!(name: "Chainsaw", location: tasks[13].location, category: categories[2])
resource_assets << ResourceAsset.create!(name: "Shingles", location: hubs[6].location, category: categories[6])
resource_assets << ResourceAsset.create!(name: "Sandwiches", location: hubs[6].location, category: categories[1])
resource_assets << ResourceAsset.create!(name: "Bandages", location: hubs[4].location, category: categories[3])
resource_assets << ResourceAsset.create!(name: "Brooms", location: hubs[8].location, category: categories[7])
resource_assets << ResourceAsset.create!(name: "Mops", location: hubs[8].location, category: categories[7])
resource_assets << ResourceAsset.create!(name: "Shovels", location: hubs[3].location, category: categories[7])
resource_assets << ResourceAsset.create!(name: "Trash Bags", location: hubs[7].location, category: categories[7])
resource_assets << ResourceAsset.create!(name: "Surface Disinfectant", resourceable: hubs[7], location: hubs[7].location, category: categories[7])


# Task volunteers
task_volunteers << TaskVolunteer.create!(user: users[0], task: tasks[10])
task_volunteers << TaskVolunteer.create!(user: users[1], task: tasks[4])
task_volunteers << TaskVolunteer.create!(user: users[2], task: tasks[2])
task_volunteers << TaskVolunteer.create!(user: users[3], task: tasks[2])
task_volunteers << TaskVolunteer.create!(user: users[4], task: tasks[3])
task_volunteers << TaskVolunteer.create!(user: users[5], task: tasks[4])
task_volunteers << TaskVolunteer.create!(user: users[6], task: tasks[4])
task_volunteers << TaskVolunteer.create!(user: users[6], task: tasks[4])
task_volunteers << TaskVolunteer.create!(user: users[6], task: tasks[6])
task_volunteers << TaskVolunteer.create!(user: users[3], task: tasks[3])
task_volunteers << TaskVolunteer.create!(user: users[3], task: tasks[2])
task_volunteers << TaskVolunteer.create!(user: users[2], task: tasks[8])
task_volunteers << TaskVolunteer.create!(user: users[2], task: tasks[3])
task_volunteers << TaskVolunteer.create!(user: users[4], task: tasks[2])
task_volunteers << TaskVolunteer.create!(user: users[4], task: tasks[2])
task_volunteers << TaskVolunteer.create!(user: users[5], task: tasks[4])
task_volunteers << TaskVolunteer.create!(user: users[5], task: tasks[7])


puts "done"
