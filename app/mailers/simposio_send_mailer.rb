class SimposioSendMailer < ApplicationMailer
    
    def send(simposio)
        @url = 'https://www.instagram.com/petcomputacao/?hl=pt-br'

        mail(
            to: @simposio.email, 
            subject: 'Inscrição SECOMP 2019'
        )
    end

end
