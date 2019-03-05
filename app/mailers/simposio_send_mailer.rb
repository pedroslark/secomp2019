class SimposioSendMailer < ApplicationMailer

    def send_mailer_symposium(simposio, file)
        @simposio = simposio
        
        # Load File Mailer TMP
        attachments[ "#{@simposio.author}" << "-Simposio.pdf"] = File.read("#{file.path}")

        mail(
            # to: ENV["EMAIL_RECEIVE_PET"], 
            to: "pet.computacao@uece.br",
            subject: "Submissão de Trabalho : #{@simposio.author}"
        )

    end

end
