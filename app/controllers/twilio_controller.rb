require 'twilio-ruby'
 
class TwilioController < ApplicationController
  include Webhookable
 
  after_filter :set_header
 
  skip_before_action :verify_authenticity_token
 
  def voice
    
    response = Twilio::TwiML::Response.new do |r|
      r.Say "Hey there, #{params['From']}. Congrats on integrating #{params['To']} into your #{params['Body']}.", :voice => 'alice'
         r.Play 'http://linode.rabasa.com/cantina.mp3'
    end
 
    render_twiml response
  end

  def sms
    message = params['Body']
    response = Twilio::TwiML::Response.new do |r|
      case message
      when 'yes', 'Yes', 'YES'
        r.Message "Thank you for choosing \'Yes\'"
      when 'no', 'No', 'NO'
        r.Message "you chose \'no\' :\'("
      else
        r.Message "sorry, we dont know what that means"
      end
    end
 
    render_twiml response
  end

end