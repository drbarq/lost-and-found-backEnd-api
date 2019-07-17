require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  test "can belong to either a email phone or text" do
    email = Email.new
    contact1 = Contact.new(contactable: email)
    phone = Phone.new
    contact2 = Contact.new(contactable: phone)
    text = Text.new
    contact3 = Contact.new(contactable: text)
    assert_equal(contact1.contactable, email)
    assert_equal(contact2.contactable, phone)
    assert_equal(contact3.contactable, text)
  end

  test "has many contactable through contacts" do
    joe = User.create(first_name: "Joe", last_name: "Tustin", contact_number: "720-487-3045", email_address: "J.Tustin@gmail.com", password: "Hello", qr_Code: "asdfjkasdflkjas")
    glasses = Item.create(user_id: joe.id, item_type: "Glasses", item_name: "My Reading Glasses")
    email = Email.create(email_address: "J.Tustin@gmail.com")
    phone = Phone.create(phone_number: "2672104670")
    text = Text.create(text_number: "1112223333")
    contact1 = glasses.contacts.create(contactable: email)
    contact2 = glasses.contacts.create(contactable: phone)
    contact3 = glasses.contacts.create(contactable: text)
    assert_equal(glasses.contacts.length, 3)
    assert_equal(glasses.contacts[0], contact1)
    assert_equal(glasses.contacts[1], contact2)
    assert_equal(glasses.contacts[2], contact3)
  end

  test "has many contacts through item" do
    joe = User.create(first_name: "Joe", last_name: "Tustin", contact_number: "720-487-3045", email_address: "J.Tustin@gmail.com", password: "Hello", qr_Code: "asdfjkasdflkjas")
    waterbottle = Item.create(user_id: joe.id, item_type: "Water Bottle", item_name: "My Drinking Bottle")
    email = Email.create(email_address: "JoeTustin@gmail.com")
    phone = Phone.create(phone_number: "222-444-2222")
    text = Text.create(text_number: "555-222-7676")
    contact1 = waterbottle.contacts.create(contactable: email)
    contact2 = waterbottle.contacts.create(contactable: phone)
    contact3 = waterbottle.contacts.create(contactable: text)
    assert_equal(waterbottle.contacts.length, 3)
    assert_equal(waterbottle.contacts[0], contact1)
    assert_equal(waterbottle.contacts[1], contact2)
    assert_equal(waterbottle.contacts[2], contact3)
  end
end
