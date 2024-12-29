class AttendancesController < ApplicationController
    def new
        @attendee=Attendance.new
    end
    def create
        @attendee = current_user.attendances.build(attendance_params)
        if @attendee.save
            flash[:notice] = "You've successfully attended the event!"
            redirect_to root_path
        else
            flash[:alert] = "You've failed to sign up for this event!"
            redirect_to root_path
        end
    end

  private
  def attendance_params
      params.require(:attendance).permit(:event_id, :user_id)
  end
end
