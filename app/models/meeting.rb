class Meeting < ApplicationRecord
  has_many :meeting_check_ins, dependent: :destroy

  def self.next
    where(happened: false).min_by(:happening)
  end
end
