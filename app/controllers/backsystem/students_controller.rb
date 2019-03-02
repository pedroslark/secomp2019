class Backsystem::StudentsController < BacksystemController
before_action :set_student, :only => [:edit, :update, :destroy, :show]
  def index
    @student = Student.new
    @students = Student.order("name ASC").all
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to backsystem_students_path, notice: 'Deletado com sucesso'
  end

  def update
    if @Student.update(student_params)
      redirect_to backsystem_students_path, notice: "Aluno atualizado com Sucesso"
    else
      render :edit
    end
  end

  def create
    @student = Student.new(student_params)
    @student.secomp_id = 1

    if @student.save
      redirect_to root_path, notice: 'Cadastrado com sucesso'
    else
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

    def set_student
      @student = Student.find(params[:id])
    end


end
