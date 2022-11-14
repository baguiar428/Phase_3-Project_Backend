class Map < ActiveRecord::Base
    has_many :monsters
    has_many :rewards, through: :monsters
end