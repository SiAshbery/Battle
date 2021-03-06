class Player
  DEFAULT_HIT_POINTS = 100
  DEFAULT_DAMAGE = 10
  attr_reader :name, :hit_points

  def initialize(name = "nil_player", hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(target)
    target.receive_damage(DEFAULT_DAMAGE)
  end

  def receive_damage(amount = DEFAULT_DAMAGE)
    @hit_points -= amount
  end

end
