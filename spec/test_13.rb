require_relative 'spec_helper'

#Create a SiegeEngine class
#2x damage on barracks, but can not attack other units
describe 'SeigeEngine' do
  before :each do
    @seigeengine = SeigeEngine.new
    @barracks = Barracks.new
  end

  describe '#attack!' do
    it 'seigeengine should do 2x damage to barack' do
    @seigeengine.attack!(@barracks)
    expect(@barracks.health_points).to eq(400)
    end
  end

  describe '#attack!' do
    seigeengine2 = SeigeEngine.new
    it 'seigeengine should do normal damage to seigeengine' do
    @seigeengine.attack!(seigeengine2)
    expect(seigeengine2.health_points).to eq(350)
    end
  end

  describe '#attack!' do
    it 'seigeengine should not be able to attack footmand or peasant' do
      footman = Footman.new
      peasant = Peasant.new
      @seigeengine.attack!(footman)
      @seigeengine.attack!(peasant)
      expect(footman.health_points).to eq(60)
      expect(peasant.health_points).to eq(35)  
    end
  end
end
