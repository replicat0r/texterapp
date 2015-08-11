class ElectriciansController < ApplicationController
    def index
        account_sid = 'AC9c3937ae39e14dcf3480f9f20efe885b'
        auth_token = 'ff290364c6a0b627d4dd1d420be3bcfa'
        @client = Twilio::REST::Client.new account_sid, auth_token
        @messages_recieved = @client.account.messages.list(
            {
                :to => '(647) 560-3914',
                :date_sent => "2015-07-27"
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
    def sendservice
        @electricians = Electrician.all
        account_sid = 'AC9c3937ae39e14dcf3480f9f20efe885b'
        auth_token = 'ff290364c6a0b627d4dd1d420be3bcfa'
        @client = Twilio::REST::Client.new account_sid, auth_token
        @electricians.each do |elec|
            message = @client.account.messages.create(
                :body => params[:message],
                :to => elec.phone.to_s,
                :from =>  "(647) 560-3914"
                ) if elec.phone.to_s.length == 10
        end
        redirect_to root_path, notice: 'sent to workers'
    end

    def import
        Electrician.import(params[:file])
        redirect_to root_url, notice: "Electricians imported."
    end

    def sendmail
        @electricians = Electrician.all
        @electricians.each do |elec|
            ServiceMailer.sendmail(elec,'abdallahnarar@gmail.com').deliver
        end
        redirect_to root_path, notice: 'sent emaill'
    end


end
