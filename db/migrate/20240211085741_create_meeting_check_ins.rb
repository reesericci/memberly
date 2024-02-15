class CreateMeetingCheckIns < ActiveRecord::Migration[7.2]
  def change
    create_table :meeting_check_ins do |t|
      t.belongs_to :meeting, null: false, foreign_key: true
      t.belongs_to :member, null: false, foreign_key: true
      t.date :happened_at

      t.timestamps
    end
  end
end
