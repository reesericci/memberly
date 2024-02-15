class Meetings::CheckInsController < ApplicationController
  def new
  end

  def create
    check_in = Meeting::CheckIn.new(meeting_id: current_meeting.id, member_id: current_member.id)
    if check_in.save
    else
      flash[:error] = "You are already checked in"
    end
    redirect_to(meeting_path(current_meeting.id))
  end

  private

  def current_meeting
    Meeting.find_by(id: params[:meeting_id])
  end
end
