class Backsystem::EventsController < BacksystemController

  def index
    @event = Event.new
    @events = Event.order("name ASC").all
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to admin_path
  end

  def create
    @event = Event.new(event_params)
    @event.secomp_id = 1

   if @event.save
        redirect_to admin_path, notice: 'Evento criado com sucesso'
    else
        render :index
    end
  end

  def event_params
        params.require(:event).permit(
            :name,
            :secomp_id
        )
  end

end
