class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :contact_number, :email_address, :items

  def items 
    self.object.items.map  do |item|
      {id: item.id,
        name: item.item_name,
        contact: item.contacts.map do |contact|
          if contact.contactable_type == "Email"
            {email: contact.contactable.email_address}
          elsif contact.contactable_type == "Phone"
            {phone: contact.contactable.phone_number}
          elsif contact.contactable_type == "Text"
            {text: contact.contactable.text_number}
          end 
        end
      }
      end 
    end 


end
