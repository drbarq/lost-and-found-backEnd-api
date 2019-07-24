# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Email.destroy_all
Phone.destroy_all
Text.destroy_all
Contact.destroy_all
Item.destroy_all
User.destroy_all 

joe = User.create(first_name: "Joe", last_name: "Tustin", contact_number: "720-487-3045", email_address: "J.Tustin@gmail.com", password: "Hello", qr_Code: "asdfjkasdflkjas")

glasses = Item.create(user_id: joe.id, item_type: "Glasses", item_name: "My Reading Glasses")
glassesemail = Email.create(email_address: "J.Tustin@gmail.com")
glassesphone = Phone.create(phone_number: "2672104670")
glassestext = Text.create(text_number: "1112223333")
glassescontactemail = glasses.contacts.create(contactable: glassesemail)
glassescontactphone = glasses.contacts.create(contactable: glassesphone)
glassescontacttext = glasses.contacts.create(contactable: glassestext)

bottle = Item.create(user_id: joe.id, item_type: "Water Bottle", item_name: "Water Container")
bottleemail = Email.create(email_address: "JoeTustin@gmail.com")
bottlephone = Phone.create(phone_number: "1112104670")
bottletext = Text.create(text_number: "888888888")
bottlecontactemail = bottle.contacts.create(contactable: bottleemail)
bottlecontacttext = bottle.contacts.create(contactable: bottletext)
bottlecontactphone = bottle.contacts.create(contactable: glassesphone)

phone = Item.create(user_id: joe.id, item_type: "Phone", item_name: "iPhone")
phoneemail = Email.create(email_address: "fred@gmail.com")
phonetext = Text.create(text_number: "444777222")
phonecontactemail = phone.contacts.create(contactable: phoneemail)
phonecontactphone = phone.contacts.create(contactable: phonetext)

drivers_id = Item.create(user_id: joe.id, item_type: "ID", item_name: "Drivers ID")
drivers_idemail = Email.create(email_address: "fred@gmail.com")
drivers_idcontactemail = drivers_id.contacts.create(contactable: drivers_idemail)

amelia = User.create(first_name: "Amelia", last_name: "Hammerl", contact_number: "978-500-9427", email_address: "aeh393@nyu.edu", password: "Hello", qr_Code: "asdfjkasdflkjas")

airpods = Item.create(user_id: amelia.id, item_type: "My AirPods", item_name: "AirPods")
airpodsemail = Email.create(email_address: "A.Hammerl@gmail.com")
airpodsphone = Phone.create(phone_number: "7748838732")
airpodstext = Text.create(text_number: "7748838732")
airpodscontactemail = airpods.contacts.create(contactable: airpodsemail)
airpodscontactphone = airpods.contacts.create(contactable: airpodsphone)
airpodscontacttext = airpods.contacts.create(contactable: airpodstext)

bbottle = Item.create(user_id: amelia.id, item_type: "Black Water Bottle", item_name: "Black Water Bottle")
bbottleemail = Email.create(email_address: "ADog@gmail.com")
bbottlephone = Phone.create(phone_number: "1112104670")
bbottletext = Text.create(text_number: "888888888")
bbottlecontactemail = bbottle.contacts.create(contactable: bbottleemail)
bbottlecontacttext = bbottle.contacts.create(contactable: bbottletext)
bbottlecontactphone = bbottle.contacts.create(contactable: airpodsphone)

carkeys = Item.create(user_id: amelia.id, item_type: "CRV Keys", item_name: "Car Keys")
carkeysemail = Email.create(email_address: "ophie@gmail.com")
carkeystext = Text.create(text_number: "8587380090")
carkeyscontactemail = carkeys.contacts.create(contactable: carkeysemail)
carkeyscontactphone = carkeys.contacts.create(contactable: carkeystext)

madrivers_id = Item.create(user_id: amelia.id, item_type: "ID", item_name: "MA Drivers ID")
madrivers_idemail = Email.create(email_address: "ophieAttack@gmail.com")
madrivers_idcontactemail = madrivers_id.contacts.create(contactable: madrivers_idemail)

