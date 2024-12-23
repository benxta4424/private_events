class AttendancesController < ApplicationController
    def new
        @attendee=Attendance.new
    end
    def create
        @attendee = current_user.attendances.build(event_id: params[attendance_params])
        if @attendee.save
            flash.now[:alert] = "You've successfully attended the event!"
            redirect_to @attendee.event
        else
            flash.now[:alert] = "You've failed to sign up for this event!"
        end
    end

  private
  def attendance_params
      params.require(:attendance).permit(:event_id)
  end
end
