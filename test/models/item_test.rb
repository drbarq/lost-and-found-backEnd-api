require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "has many contacts" do
    item = Item.new
    contact1 = item.contacts.new
    contact2 = item.contacts.new
    assert_equal(item.contacts.length, 2)
    assert_equal(item.contacts[0], contact1)
    assert_equal(item.contacts[1], contact2) 
  end

  test "belongs to a item" do
    item = Item.new
    contact = Contact.new(item: item)
    assert_equal(contact.item, item)
  end
end
