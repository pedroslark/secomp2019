class SimposioSendMailer < ApplicationMailer

    def send(simposio)
        mail(
          to: "petcomputacao@uece.br",
          subject: "Submissão de Trabalho"
        )
    end

end
