class TwilioTextMessenger
    attr_reader :message
  
    def initialize(message, item)
      @message = message
      @item = item

      @text_contact = @item.contacts.find do |contact|
        contact.contactable_type === "Text"
      end 
      
      @text_number = @text_contact.contactable.text_number

    end
  
    def call
      # byebug
      client = Twilio::REST::Client.new
        client.messages.create({
          # local config
          from: Rails.application.credentials.twilio_phone_number,
          
          # heroku config
          # from: ENV['HEROKU_twilio_phone_number'],
          to: @text_number,
          body: message
        })
    end
end