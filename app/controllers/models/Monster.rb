class Monster < ActiveRecord::Base
    has_many :rewards
    has_many :Heroes, through: :rewards
    belongs_to :map
end
