class ServiceMailer < ActionMailer::Base
    default from: "Info@Turnkii.com"

    def sendmail(electrician,email)
        @electrician = electrician;
        @company_name = electrician.name;
        email = 'abdallahnarar@gmail.com'
        mail(to: email, subject: "Welcome to TurnKii")
    end
end

