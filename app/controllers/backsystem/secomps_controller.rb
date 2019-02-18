class Backsystem::SecompsController < BacksystemController
  def index
    @secomp = Secomp.new
    @secomps = Secomp.order("name ASC").all
  end

  def destroy
    @secomp = Secomp.find(params[:id])
    @secomp.destroy

    redirect_to admin_path
  end

  def create
    @secomp = Secomp.new(secomp_params)

   if @secomp.save
        redirect_to root_path, notice: 'Secomp criada com sucesso'
    else
        render :index
    end
  end

  def secomp_params
        params.require(:secomp).permit(:name)
  end


end
