class Barracks
  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def train_footman
    @gold -= 135
    @food -= 2
    (can_train_footman?) ? Footman.new : nil
  end

  def train_peasant
    @gold -= 90
    @food -= 5
    (can_train_peasant?) ? Peasant.new : nil
  end

  def can_train_footman?
    (gold >= 135 && food >= 2) ? true : false
  end

  def can_train_peasant?
    (gold >= 90 && food >= 5) ? true : false
  end

end
