class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :contact_number, :email_address, :items
  # is it possible to create an object and add it in?  
  def items 

    # nested object 
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


#     def items 
#       self.object.items.map  do |item|
#         phone = item.contacts.select do |contact|
#                   contact.contactable_type == "Phone"
#                 end[0]
#         contact = phone.contactable
#             # byebug


#         hash = {id: item.id,
#               name: item.item_name,

#               email: contact

#             }
#       end 
#     end
# end 

# # elsif contact.contactable_type == "Phone"
# #   phone: contact.contactable.phone_number
# # elsif contact.contactable_type == "Text"
# #   text: contact.contactable.text_number


#   # def items 
#   #   self.object.items.map  do |item|
#   #     @comms = item.contacts.map do |contact|
#   #               if contact.contactable_type == "Email"
#   #                email: contact.contactable.email_address
#   #               elsif contact.contactable_type == "Phone"
#   #                 return phone: contact.contactable.phone_number
#   #               elsif contact.contactable_type == "Text"
#   #                 (text: contact.contactable.text_number)
#   #               end 
#   #             end


#   #     {id: item.id,
#   #       name: item.item_name,
#   #       @comms 
#   #     }


#   #     end 
#   #   end 


