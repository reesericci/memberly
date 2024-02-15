class MeetingsController < ApplicationController
  def show
    @meeting = current_meeting
    @member = current_member
  end

  private

  def current_meeting
    Meeting.find_by(id: params[:id])
  end
end
