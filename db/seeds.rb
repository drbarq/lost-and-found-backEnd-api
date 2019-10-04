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

glasses = Item.create(user_id: joe.id, item_name: "Reading Glasses", message: "Thank you for finding my glasses!  I'm blind without them, please send me a message and I will be quick to grab them!", qr_code: "https://i.imgur.com/kxjag3S.png")
glassesemail = Email.create(email_address: "J.Tustin@gmail.com")
glassesphone = Phone.create(phone_number: "+17204873045")
glassestext = Text.create(text_number: "+17204873045")
glassescontactemail = glasses.contacts.create(contactable: glassesemail)
glassescontactphone = glasses.contacts.create(contactable: glassesphone)
glassescontacttext = glasses.contacts.create(contactable: glassestext)

bottle = Item.create(user_id: joe.id, item_name: "Green Hydroflask", message: "Thank you for finding my Hydroflask!  That water bottle and I have been through a lot and would love it back.  Please send me a message and I will grab it!", qr_code: "https://i.imgur.com/TmtjC55.png")
bottlecontactemail = bottle.contacts.create(contactable: glassesemail)
bottlecontactphone = bottle.contacts.create(contactable: glassesphone)
bottlecontacttext = bottle.contacts.create(contactable: glassestext)

keys = Item.create(user_id: joe.id, item_name: "Car Keys", message: "If you are reading this, I lost my keys.  Thank you for finding them! I am sure I am freaking out right now.  Please send me a message using the form below. Thank you for being awesome! - Joe", qr_code: "https://i.imgur.com/sqT4yxh.png")
keyscontactemail = keys.contacts.create(contactable: glassesemail)
keyscontacttext = keys.contacts.create(contactable: glassestext)

drivers_id = Item.create(user_id: joe.id, item_name: "Drivers ID", message: "Thank you for finding my ID! Did I forget it at the bar again? Send me a message and I will swing by to pick it up!", qr_code: "https://i.imgur.com/o8U47Pz.png")
drivers_idcontacttext = drivers_id.contacts.create(contactable: glassestext)

cat = Item.create(user_id: joe.id, item_name: "HashBrown", message: "He got outside again?  Thank you for taking care of him.  He is a friendly guy as I'm sure you have noticed.  Please send me a message and I will be by to get him. Thank you!", qr_code: "https://i.imgur.com/eIrP67F.png")
catContactText = cat.contacts.create(contactable: glassestext)


amelia = User.create(first_name: "Amelia", last_name: "Hammerl", contact_number: "+19785009427", email_address: "aeh393@nyu.edu", password: "Hello")

airpods = Item.create(user_id: amelia.id, item_name: "AirPods", message: "I wish my name was on these!", qr_code: "https://i.imgur.com/SGcW4yf.png")
airpodsemail = Email.create(email_address: "aeh393@nyu.edu")
airpodsphone = Phone.create(phone_number: "+19785009427")
airpodstext = Text.create(text_number: "+19785009427")
airpodscontactemail = airpods.contacts.create(contactable: airpodsemail)
airpodscontactphone = airpods.contacts.create(contactable: airpodsphone)
airpodscontacttext = airpods.contacts.create(contactable: airpodstext)

bbottle = Item.create(user_id: amelia.id, item_name: "Black Water Bottle", message: "Thank you for finding my water bottle!", qr_code: "https://i.imgur.com/SGcW4yf.png")
bbottleemail = Email.create(email_address: "ADog@gmail.com")
bbottlephone = Phone.create(phone_number: "1112104670")
bbottletext = Text.create(text_number: "888888888")
bbottlecontactemail = bbottle.contacts.create(contactable: airpodsemail)
bbottlecontactphone = bbottle.contacts.create(contactable: airpodsphone)
bbottlecontacttext = bbottle.contacts.create(contactable: airpodstext)


carkeys = Item.create(user_id: amelia.id, item_name: "Car Keys", message: "Were they under the couch again?", qr_code: "https://i.imgur.com/SGcW4yf.png")
carkeysemail = Email.create(email_address: "ophie@gmail.com")
carkeystext = Text.create(text_number: "8587380090")
carkeyscontactemail = carkeys.contacts.create(contactable: airpodsemail)
carkeyscontactphone = carkeys.contacts.create(contactable: airpodstext)

madrivers_id = Item.create(user_id: amelia.id, item_name: "MA Drivers ID", message: "It must have fallen out, thank you!", qr_code: "https://i.imgur.com/SGcW4yf.png")
madrivers_idemail = Email.create(email_address: "ophieAttack@gmail.com")
madrivers_idcontactemail = madrivers_id.contacts.create(contactable: airpodsemail)

sarah = User.create(first_name: "Sarah", last_name: "Tustin", contact_number: "+12672107670", email_address: "sarah.tustin@gmail.com", password: "Hello")
sarahairpods = Item.create(user_id: sarah.id, item_name: "AirPods", message: "Did I leave these in an Uber?", qr_code: "https://i.imgur.com/SGcW4yf.png")
sarahText = Text.create(text_number: "+12672107670")
sarahTextContact = sarahairpods.contacts.create(contactable: sarahText)