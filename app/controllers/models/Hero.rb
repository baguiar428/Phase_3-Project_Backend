class Hero < ActiveRecord::Base
    has_many :rewards
    has_many :monsters, through: :rewards
end