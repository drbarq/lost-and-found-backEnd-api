class TwilioTextMessenger
    attr_reader :message
  
    def initialize(message, item)
      @message = message
      @item = item

      @text_number = @item.contacts[2].contactable.text_number
    #   byebug
    end
  
    def call
      client = Twilio::REST::Client.new
      client.messages.create({
        from: Rails.application.credentials.twilio_phone_number,
        to: @text_number,
        body: message
      })
    end
end