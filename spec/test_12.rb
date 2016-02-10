require_relative 'spec_helper'

#create a method for units to die
#a dead unit can not attack

describe Unit do
  before :each do
    @enemy_superman = Unit.new(300, 300)
    @footman = Footman.new
  end

  describe '#dead?' do
    it 'unit should die when their HP equals or less than 0' do
      @enemy_superman.attack!(@footman)
      expect(@footman.dead?).to be(true)
    end
  end

  describe '#attack!' do
    it 'unit that are dead can not attack' do
    @enemy_superman.attack!(@footman)
    expect(@footman.attack!(@enemy_superman)).to eq(nil)
    end
  end 

end