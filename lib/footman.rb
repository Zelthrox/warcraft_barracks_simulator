# http://classic.battle.net/war3/human/units/footman.shtml
class Footman < Unit
  def initialize
    super(60, 10)
  end

  def attack!(enemy)
    if enemy.class == Barracks
      attack_damage(enemy, attack_power / 2)
    else
      attack_damage(enemy, attack_power)
    end
  end

end
