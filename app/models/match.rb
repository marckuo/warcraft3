class Match < ActiveRecord::Base
  
  has_many   :reviews
  belongs_to :player_1_user_id
  belongs_to :player_2_user_id

  validates  :sport_id, presence: true

end

