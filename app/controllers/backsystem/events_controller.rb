class Backsystem::EventsController < BacksystemController

  before_action :set_event, :only => [:edit, :update, :destroy,:show]

  #  OK
  def index
    @events = Event.order("name ASC").all
  end

  # OK
  def new
    @event = Event.new
  end

  # Revisar FK
  def create
    @event = Event.new(event_params)
    @event.secomp_id = 1

    if @event.save
      redirect_to backsystem_events_path, notice: 'Evento criado com sucesso'
    else
      render :new
    end
  end

  def edit
    @students = Student.all
  end

  def show
    @students = Student.all.order("name ASC")
  end

  def show_report
    @students = Student.all.order("name ASC")
    @event = Event.find(params[:id])
    @count = Event.count
  end

  # Revisar
  def update
    if @event.update(event_params)
      redirect_to backsystem_events_path, notice: "Evento atualizado com Sucesso"
    else
      render :edit
    end
  end

  # Revisar FK
  def destroy
    @event.destroy
    redirect_to backsystem_events_path, notice: "Evento deletado com sucesso"
  end




  private
    def event_params
          params.require(:event).permit(
              :name,
              :secomp_id,
              student_ids: []
          )
    end

    def set_event
      @event = Event.find(params[:id])
    end

end
