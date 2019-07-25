class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :contact_number, :email_address, :items
 
  def items 
    self.object.items.map  do |item|
      {id: item.id,
        name: item.item_name,
        contact: item.contacts.inject({}) do |k, contact|          
          if contact.contactable_type == "Email"
            k[:emailID] = contact.contactable.id
            k[:email] = contact.contactable.email_address
          elsif contact.contactable_type == "Phone"
            k[:phoneID] = contact.contactable.id
            k[:phone] = contact.contactable.phone_number
          elsif contact.contactable_type == "Text"
            k[:textID] = contact.contactable.id
            k[:text] = contact.contactable.text_number
          end
          k 
        end
      }
      end 
    end  
end 