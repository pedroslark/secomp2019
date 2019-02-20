class StudentMailer < ApplicationMailer
  default from: 'secomp2019@uece.br'

  def registration_confirmation(student)
    @url = 'https://www.instagram.com/petcomputacao/?hl=pt-br'
    @student = student

    mail(to: @student.email, subject: 'Inscrição SECOMP 2019')
  end
end
