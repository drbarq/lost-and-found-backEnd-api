class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :contact_number, :email_address, :items
 
  def items 
    self.object.items.map  do |item|
      {id: item.id,
        name: item.item_name,
        contact: item.contacts.inject({}) do |k, contact|          
          if contact.contactable_type == "Email"
            k[:email] = contact.contactable.email_address
          elsif contact.contactable_type == "Phone"
            k[:phone] = contact.contactable.phone_number
          elsif contact.contactable_type == "Text"
            k[:text] = contact.contactable.text_number
          end
          k 
        end
      }
      end 
    end  
end 