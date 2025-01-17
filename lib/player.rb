class Player
  DEFAULT_HITPOINTS = 30
  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = DEFAULT_HITPOINTS)
    @name = name
    @hitpoints = hitpoints
  end  

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hitpoints -= 10
  end

end