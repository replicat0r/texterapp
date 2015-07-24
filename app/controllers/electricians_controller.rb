class ElectriciansController < ApplicationController
    def index
        account_sid = 'AC9c3937ae39e14dcf3480f9f20efe885b'
        auth_token = 'ff290364c6a0b627d4dd1d420be3bcfa'
        @client = Twilio::REST::Client.new account_sid, auth_token
        @messages_recieved = @client.account.messages.list(
            {
                :to => '(647) 560-3914',
                :date_sent => "2015-07-24"
            }
        )

        @electricians = Electrician.all
        @column_names = Electrician.column_names
        
    end


    def sendtext
        numbers = params[:phone_number].split(',')
        text = params[:message]
        account_sid = 'AC9c3937ae39e14dcf3480f9f20efe885b'
        auth_token = 'ff290364c6a0b627d4dd1d420be3bcfa'
        @client = Twilio::REST::Client.new account_sid, auth_token
        # numbers = ['6476868340','6478211680','6478967473','6475349098']
        # numbers = ['6476868340']
        numbers.each do |number|
            message = @client.account.messages.create(
                :body => text,
                :to => number.strip,
                :from => "(647) 560-3914",
                #:media_url => "http://i.imgur.com/JXYPysP.jpg"
            )
        end
        redirect_to root_path
    end

    def import
        Electrician.import(params[:file])
        redirect_to root_url, notice: "Electricians imported."
    end


end
