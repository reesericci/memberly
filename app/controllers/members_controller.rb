class MembersController < ApplicationController
  def show
    @member = current_member
    @next_meeting = Meeting.first
  end
end
