class Character < ApplicationRecord
  belongs_to :user
  belongs_to :player_class
end
