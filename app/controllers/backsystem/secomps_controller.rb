class Backsystem::SecompsController < BacksystemController
  before_action :set_secomp, :only => [:edit, :update, :destroy, :show]

  def index
    @secomps = Secomp.order("name ASC").all
  end

  def destroy
    @secomp.destroy
    redirect_to backsystem_secomps_path, notice: 'Secomp deletada com sucesso'
  end

  def edit
  end

  def update
    if @secomp.update(secomp_params)
      redirect_to backsystem_secomps_path, notice: 'Secomp atualizada com sucesso'
    else
      render :edit
    end
  end

  def new
    @secomp = Secomp.new
  end


  def create
    @secomp = Secomp.new(secomp_params)

    if @secomp.save
        redirect_to backsystem_secomps_path, notice: 'Secomp criada com sucesso'
    else
        render :index
    end
  end

  private
    def secomp_params
      params.require(:secomp).permit(:name)
    end

    def set_secomp
      @secomp = Secomp.find(params[:id])
    end



end
