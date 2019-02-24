class Backsite::HomeController < BacksiteController

  # GET "/" Home
  def index
    @student = Student.new
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


end
