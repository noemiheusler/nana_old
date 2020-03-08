class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.string :description
      t.string :comment
      t.integer :participant_nr
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
