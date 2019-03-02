class SimposioSendMailer < ApplicationMailer

    def send_mailer_symposium(simposio)
        # Load File Mailer
        # attachments['attachment.extension'] = file
        @simposio = simposio
        mail(
            to: ENV['SEND_MAIL_TO'], 
            subject: "Submissão de Trabalho : #{@simposio.author}"

    end

end
