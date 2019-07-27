# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ContactForm.destroy_all
Email.destroy_all
Phone.destroy_all
Text.destroy_all
Contact.destroy_all
Item.destroy_all
User.destroy_all 


joe = User.create(first_name: "Joe", last_name: "Tustin", contact_number: "+17204873045", email_address: "J.Tustin@gmail.com", password: "Hello")

glasses = Item.create(user_id: joe.id, item_name: "My Reading Glasses", message: "Thank you for finding my item!", qr_code: "https://i.imgur.com/SGcW4yf.png")
glassesemail = Email.create(email_address: "J.Tustin@gmail.com")
glassesphone = Phone.create(phone_number: "+17204873045")
glassestext = Text.create(text_number: "+17204873045")
glassescontactemail = glasses.contacts.create(contactable: glassesemail)
glassescontactphone = glasses.contacts.create(contactable: glassesphone)
glassescontacttext = glasses.contacts.create(contactable: glassestext)

bottle = Item.create(user_id: joe.id, item_name: "Water Container", message: "Thank you for finding my item! Please send me a message", qr_code: "https://i.imgur.com/SGcW4yf.png")
bottleemail = Email.create(email_address: "JoeTustin@gmail.com")
bottlephone = Phone.create(phone_number: "1112104670")
bottletext = Text.create(text_number: "888888888")
bottlecontactemail = bottle.contacts.create(contactable: glassesemail)
bottlecontactphone = bottle.contacts.create(contactable: glassesphone)
bottlecontacttext = bottle.contacts.create(contactable: glassestext)

phone = Item.create(user_id: joe.id, item_name: "iPhone", message: "You are a saint!", qr_code: "https://i.imgur.com/SGcW4yf.png")
# phoneemail = Email.create(email_address: "fred@gmail.com")
phonetext = Text.create(text_number: "444777222")
phonecontactemail = phone.contacts.create(contactable: glassesemail)
phonecontactphone = phone.contacts.create(contactable: glassestext)

drivers_id = Item.create(user_id: joe.id, item_name: "Drivers ID", message: "Did I forget it at the bar again?", qr_code: "https://i.imgur.com/SGcW4yf.png")
# drivers_idemail = Email.create(email_address: "fred@gmail.com")
drivers_idcontactemail = drivers_id.contacts.create(contactable: glassesemail)
drivers_idcontacttext = drivers_id.contacts.create(contactable: glassestext)

amelia = User.create(first_name: "Amelia", last_name: "Hammerl", contact_number: "978-500-9427", email_address: "aeh393@nyu.edu", password: "Hello")

airpods = Item.create(user_id: amelia.id, item_name: "AirPods", message: "I wish my name was on these!", qr_code: "https://i.imgur.com/SGcW4yf.png")
airpodsemail = Email.create(email_address: "A.Hammerl@gmail.com")
airpodsphone = Phone.create(phone_number: "7748838732")
airpodstext = Text.create(text_number: "7748838732")
airpodscontactemail = airpods.contacts.create(contactable: airpodsemail)
airpodscontactphone = airpods.contacts.create(contactable: airpodsphone)
airpodscontacttext = airpods.contacts.create(contactable: airpodstext)

bbottle = Item.create(user_id: amelia.id, item_name: "Black Water Bottle", message: "Thank you for finding my water bottle!", qr_code: "https://i.imgur.com/SGcW4yf.png")
bbottleemail = Email.create(email_address: "ADog@gmail.com")
bbottlephone = Phone.create(phone_number: "1112104670")
bbottletext = Text.create(text_number: "888888888")
bbottlecontactemail = bbottle.contacts.create(contactable: bbottleemail)
bbottlecontactphone = bbottle.contacts.create(contactable: airpodsphone)
bbottlecontacttext = bbottle.contacts.create(contactable: bbottletext)


carkeys = Item.create(user_id: amelia.id, item_name: "Car Keys", message: "Were they under the couch again?", qr_code: "https://i.imgur.com/SGcW4yf.png")
carkeysemail = Email.create(email_address: "ophie@gmail.com")
carkeystext = Text.create(text_number: "8587380090")
carkeyscontactemail = carkeys.contacts.create(contactable: carkeysemail)
carkeyscontactphone = carkeys.contacts.create(contactable: carkeystext)

madrivers_id = Item.create(user_id: amelia.id, item_name: "MA Drivers ID", message: "It must have fallen out, thank you!", qr_code: "https://i.imgur.com/SGcW4yf.png")
madrivers_idemail = Email.create(email_address: "ophieAttack@gmail.com")
madrivers_idcontactemail = madrivers_id.contacts.create(contactable: madrivers_idemail)

