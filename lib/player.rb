class Player
  attr_reader :name, :position

  def initialize(player)
    @name = player[:name]
    @position = player[:position]
  end

end
