Twilio.configure do |config|
    # local config
    config.account_sid = Rails.application.credentials.twilio_account_sid
    config.auth_token = Rails.application.credentials.twilio_auth_token
    
    # heroku config
    # config.account_sid = ENV['HEROKU_twilio_account_sid']
    # config.auth_token = ENV['HEROKU_twilio_auth_token']
end


