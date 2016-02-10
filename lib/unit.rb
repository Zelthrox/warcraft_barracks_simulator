class Unit
  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(enemy_attack_power)
      @health_points -= enemy_attack_power
  end

  def attack!(enemy)
    attack_damage(enemy, attack_power)
  end

  def dead?
    @health_points <= 0
  end

  def attack_damage(enemy, attack)
    (dead? == true) ? (nil) : (enemy.damage(attack))
  end
end
