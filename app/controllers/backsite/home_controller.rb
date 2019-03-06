class Backsite::HomeController < BacksiteController

  # GET "/" Home
  def index
    @student = Student.new
    @simposio = Symposium.new
  end

  # POST "/" Subscribe
  def create
    @simposio = Symposium.new
    @student = Student.new(student_params)
    @student.secomp_id = 1

    if @student.save
      redirect_to root_path, notice: 'Cadastro realizado com sucesso!'
    else
      render :index
    end
  end

  # POST "/send_simposio" Mailer Simposio
  def send_symposium
    @student = Student.new
    @simposio = Symposium.new(symposium_params)

    file = params[:symposium][:file]
    is_pdf = file.original_filename.include? ".pdf"

    if @simposio.valid? and !file.nil? and is_pdf
      SimposioSendMailer.send_mailer_symposium(@simposio,file).deliver_now
      redirect_to root_path, notice: "Formulário enviado com sucesso!"
    else
      if file.nil? or !is_pdf
        flash[:alert] = "PDF do simpósio é obrigatório (Somente PDF)"
      end
      render :index
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
