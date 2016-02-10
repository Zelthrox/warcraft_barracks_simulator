class Unit
  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(enemy)
    @health_points -= enemy.attack_power
  end

  def attack!(enemy)
    (dead? == true) ? (nil) : (enemy.damage(self))
  end

  def dead?
    @health_points <= 0
  end
end
