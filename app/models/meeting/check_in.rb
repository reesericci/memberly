class Meeting::CheckIn < ApplicationRecord
  belongs_to :meeting
  belongs_to :member

  validate :ensure_unique_check_in

  def ensure_unique_check_in
    errors.add(:user_id, "is already checked in") unless Meeting::CheckIn.find_by(meeting_id: meeting_id, member_id: member_id).nil?
  end
end
