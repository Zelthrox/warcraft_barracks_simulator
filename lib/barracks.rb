class Barracks
  attr_accessor :gold, :food, :lumber, :health_points

  def initialize
    @gold = 1000
    @food = 80
    @lumber = 500
    @health_points = 500
  end

  def train_footman
    self.gold -= 135
    self.food -= 2
    (can_train_footman?) ? Footman.new : nil
  end

  def train_peasant
    self.gold -= 90
    self.food -= 5
    (can_train_peasant?) ? Peasant.new : nil
  end

  def train_seigeengine
    self.gold -= 200
    self.lumber -= 60
    self.food -= 3
    (can_train_seigeengine?) ? SeigeEngine.new : nil
  end

  def can_train_footman?
    (gold >= 135 && food >= 2) ? true : false
  end

  def can_train_peasant?
    (gold >= 90 && food >= 5) ? true : false
  end

  def can_train_seigeengine?
    (gold >= 200 && lumber >= 60 && food >= 3) ? true : false
  end

  def damage(enemy_attack_power)
      @health_points -= enemy_attack_power
  end
end
