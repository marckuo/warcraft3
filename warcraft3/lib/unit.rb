class Unit
  
  attr_reader :health_points, :attack_power

  def initialize (health_points, attack_power)
    @health_points= health_points
    @attack_power= attack_power
  end

  def attack!(enemy)
    enemy.damage(attack_power)
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

  def dead?
    if @health_points == 0
      true
    else
      false
    end
  end
end