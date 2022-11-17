class Map < ActiveRecord::Base
    has_many :monsters
    has_many :rewards, through: :monsters

    # def monster_with_one_reward
    #     monsters = self.monsters.
    # end

end