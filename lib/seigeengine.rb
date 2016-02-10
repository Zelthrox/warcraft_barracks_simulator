class SeigeEngine < Unit
  def initialize 
    super(400, 50)
  end

  def attack!(enemy)
    case 
    when enemy.class == Barracks
      attack_damage(enemy, attack_power*2)
    when enemy.class == SeigeEngine
      attack_damage(enemy, attack_power)
    else
      nil
    end
  end

end