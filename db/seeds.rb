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

email = Email.create(email_address: "J.Tustin@gmail.com")
phone = Phone.create(phone_number: "2672104670")
text = Text.create(text_number: "1112223333")

contact1 = glasses.contacts.create(contactable: email)
contact2 = glasses.contacts.create(contactable: phone)
contact3 = glasses.contacts.create(contactable: text)