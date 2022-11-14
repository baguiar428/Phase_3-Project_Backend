class Reward < ActiveRecord::Base
    belongs_to :hero
    belongs_to :monster
end