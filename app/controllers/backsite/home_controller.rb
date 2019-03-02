class Backsite::HomeController < BacksiteController

  # GET "/" Home
  def index
    @student = Student.new
    @simposio = Symposium.new
  end

  # POST "/" Subscribe
  def create
    @student = Student.new(student_params)
    @student.secomp_id = 1

    if @student.save
      StudentMailer.registration_confirmation(@student).deliver_now
      redirect_to root_path, notice: 'Cadastrado com sucesso'
    else
      render :index, alert: "Falha no cadastro"
    end
  end

  def send_symposium
    @simposio = Symposium.new(symposium_params)
    
    if @simposio.save
      SimposioSendMailer.send_mailer_symposium(@simposio).deliver_now
      redirect_to root_path, notice: "Simpósio enviado com sucesso"
    else
      render root_path, notice: "ERROR"
    end
    
  end

  private
    def student_params
      params.require(:student).permit(
          :name,
          :email,
          :institution,
          :course,
          :registration,
          :phone,
          :secomp_id
      )
    end
    
    def symposium_params
      params.require(:symposium).permit(
          :title,
          :author,
          :presenter_1,
          :presenter_2,
          :advisor
      )
    end


end
