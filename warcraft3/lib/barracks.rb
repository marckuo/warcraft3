require_relative 'footman'
require_relative 'unit'
require_relative 'peasant'

class Barracks
  attr_reader :gold, :food

  def initialize (gold=1000, food=80)
    @gold = gold
    @food = food
  end

  def can_train_footman?
    if self.gold >=135 && self.food >=80
      return true
    else
      return false
    end
  end

  def train_footman
    if self.can_train_footman?
      @gold -= 135
      @food -= 2
      footman = Footman.new
    else
      footman = nil
    end
  end

  def can_train_peasant?
    if self.gold >=90 && self.food >=5
      return true
    else
      return false
    end
  end

  def train_peasant
    if self.can_train_peasant?
      @gold -= 90
      @food -= 5
      peasant = Peasant.new
    else
      peasant = nil
    end
  end


end
