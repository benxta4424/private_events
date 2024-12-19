class EventsController < ApplicationController
  def index
    @events=Event.all
  end

  def new
    @event=Event.new
  end

  def create
    @event=current_user.events.build(event_params)

    if @event.save
      redirect_to root_path
    else
      redirect_to new_event_path
    end
  end

  private
  def event_params
    params.require(:event).permit(:date, :name, :location)
  end
end
