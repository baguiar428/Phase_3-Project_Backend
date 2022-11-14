class Monster < ActiveRecord::Base
    has_many :rewards
    has_many :characters, through: :rewards
    belongs_to :map
end
