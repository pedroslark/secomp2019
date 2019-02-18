class Backsystem::HomeController < BacksystemController

  def index
    @student = Student.new
    @students = Student.order("name ASC").all
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to admin_path
  end

  # def create
  #   @student = Student.new(student_params)
  #   @student.secomp_id = 1
  #
  #  if @student.save
  #       redirect_to root_path, notice: 'Cadastrado com sucesso'
  #   else
  #       render :index
  #   end
  # end

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
