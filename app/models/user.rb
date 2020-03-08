class User < ApplicationRecord

# include PgSearch::Model
#  geocoded_by :location
#  after_validation :geocode, if: :will_save_change_to_location?


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :kids
  has_many :events
  has_many :participations
  has_many :answers
  # has_many_attached :photos

  validates  :username, presence: true, length: { maximum: 25 }
  validates  :motto, presence: true, length: { maximum: 200 }
  validates  :location, presence: true, length: { maximum: 200 }
  validates  :description, presence: true, length: {maximum: 200}

#  pg_search_scope :search_by_brand_and_model_and_location,
#    against: [ :brand, :model, :location ],
#    ignoring: :accents,
#    using: {
#      tsearch: { prefix: true }
#    }
# end



end
