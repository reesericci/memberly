module MeetingsHelper
  def checked_in(meeting_id, member_id)
    !Meeting::CheckIn.find_by(meeting_id: meeting_id, member_id: member_id).nil?
  end
end
