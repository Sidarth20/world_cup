require 'pry'
class Team
  attr_reader :country, :players
  attr_accessor :eliminated

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def add_player(player)
    @players << player
  end

  # def players_by_position(position)
  #   result = players.map do |player|
  #     # binding.pry
  #     if player.position == position
  #       player
  #     end
  #   end.compact  <-- to get rid of nil value from original array return value
  # end
  #
  # def players_by_position(position)
  #   result =[]
  #   players.each do |player|
  #     # binding.pry
  #     if player.position == position
  #       result << player
  #     end
  #   end
  #   result
  # end

  def players_by_position(position)
    players.find_all do |player|
      player.position == position
    end
  end

end
