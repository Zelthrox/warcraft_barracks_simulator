class SeigeEngine < Unit
  def initialize 
    @health_points = 400
    @attack_power = 50
  end

  def attack!(enemy)
    case 
    when (enemy.class == Barracks || enemy.class == SeigeEngine)
      (dead? == true) ? (nil) : (enemy.damage(self))
    else
      nil
    end
  end

end