class Monster < ActiveRecord::Base
    has_many :rewards
    has_many :heros, through: :rewards
    belongs_to :map

    # def defeated(hero)
    #     self.rewards.sample.update(hero_id: hero.id)
    # end
end
