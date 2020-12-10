# frozen_string_literal: true

class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def attack(player)
    player.damaged
  end

  def damaged
    @hp -= 10
  end
end
