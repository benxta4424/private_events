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

  def edit
    @event=Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    Event.find(params[:id]).destroy
  end

  def show
    @event=Event.find(params[:id])
  end

  private
  def event_params
    params.require(:event).permit(:date, :name, :location)
  end
end
