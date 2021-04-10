require 'pry'
class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def eliminated
    binding.pry
    @teams.eliminated
  end

  def active_players_by_position(position)
    players = teams.map do |team|
      if eliminated == false
        # binding.pry
        team.players
      end
    end.flatten
    players.find_all do |player|
      player.position == position
    end
  end
end
