class Reward < ActiveRecord::Base
    belongs_to :character
    belongs_to :monster
end