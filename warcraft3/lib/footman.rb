# http://classic.battle.net/war3/human/units/footman.shtml
require 'unit'

class Footman < Unit

  def initialize
    super(health_points=60,attack_power=10)
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

end
