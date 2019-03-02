class SimposioSendMailer < ApplicationMailer

    def send_mailer_symposium(simposio, file)
        @simposio = simposio
        
        # Load File Mailer
        attachments["simposio" << @simposio.author << ".pdf"] = file
        
        mail(
            to: ENV["EMAIL_RECEIVE_PET"], 
            subject: "Submissão de Trabalho : #{@simposio.author}"
        )

    end

end
