class CreateMeetings < ActiveRecord::Migration[7.2]
  def change
    create_table :meetings do |t|
      t.datetime :happening_at
      t.string :name
      t.boolean :happened, null: false, default: false

      t.timestamps
    end
  end
end
