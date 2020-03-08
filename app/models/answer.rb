class Answer < ApplicationRecord
  belongs_to :user

  validates :match_answer_toy, presence: true, inclusion: { in: [ true, false ] }
  validates :match_answer_activity, presence: true, inclusion: { in: [ true, false ] }
  validates :match_answer_shopping, presence: true, inclusion: { in: [ true, false ] }

end
