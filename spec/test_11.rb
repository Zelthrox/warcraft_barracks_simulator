require_relative 'spec_helper'

# Buildings can also be attacked by a unit
# Create health_points for barrack
# barrack only takes 1/2 dmg from attacks

describe Barracks do
  before :each do
    @barrack = Barracks.new
    @enemy_footman = Footman.new
    @enemy_knight = Unit.new(200, 30)
  end

  it 'Barrack should have 500 health_points' do
    expect(@barrack.health_points).to be(500)
  end  

  describe '#damage' do
    it 'Footman should do 5 damage (10/2) to barrack' do
    @enemy_footman.attack!(@barrack)
    expect(@barrack.health_points).to eq(495) #health_point started at 500
    end
  end

  describe '#damage' do
    it 'Other Non-Footman unit should do full damage to barrack' do
    @enemy_knight.attack!(@barrack)
    expect(@barrack.health_points).to eq(470) #takes full 30 damage
    end
  end


end