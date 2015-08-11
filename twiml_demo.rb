# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'
 
# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC9c3937ae39e14dcf3480f9f20efe885b'
auth_token = 'ff290364c6a0b627d4dd1d420be3bcfa'
#@client = Twilio::REST::Client.new account_sid, auth_token
 
#app = @client.account.applications.create(:friendly_name => "Phone Me",
#    :voice_url => "http://localhost:3000/twilio/voice",
#    :voice_method => "POST",
#    )
#puts app.voice_url
@client = Twilio::REST::Client.new account_sid, auth_token
 
call = @client.account.calls.create(:url => "http://demo.twilio.com/docs/voice.xml",
    :to => "(647) 686-8340",
    :from => "(647) 560-3914")
puts call.to
