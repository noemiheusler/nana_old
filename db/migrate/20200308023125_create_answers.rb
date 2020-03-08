class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.boolean :match_answer_toy
      t.boolean :match_answer_activity
      t.boolean :match_answer_shopping
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
