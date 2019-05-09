class Backsystem::ReportsController < BacksystemController

  before_action :set_event, :only => [:edit, :update, :destroy,:show]

  #  OK
  def index
    @events = Event.order("name ASC").all
    @students = Student.all.order("name ASC")
    @count = Event.count
  end

  def show
    @students = Student.all.order("name ASC")
  end

  def show_report
    @students = Student.all.order("name ASC")
    @event = Event.find(params[:id])
    @count = Event.count
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
