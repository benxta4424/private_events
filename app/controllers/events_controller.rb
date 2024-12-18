class EventsController < ApplicationController
  def index
    @events=Event.all
  end

  def new_event_path
    @event=Event.new
  end

  def create
    @event=current_user.build_event(event_params)

    if @event.save
      redirect_to root
    else
      redirect_to new_event_path
    end
  end

  private
  def event_params
    params.require(:event).permit(current_user.id, :date, :name, :location)
  end
end
