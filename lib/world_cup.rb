require 'pry'
class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def midfielders
    players = {}

    @teams.each do |team|
      team.players.each do |player|
        if players[player.position]
          players[player.position].push(player)
        else
          players[player.position] = [player]
        end
      end
    end
    players["midfielder"]
  end


  def active_players_by_position(position)
    players = []
    @teams.flat_map do |team|
        team.players.flat_map do |player|
          if player.position == position
            players.push(player)
            # binding.pry
          elsif !team.eliminated?
            players[0]
          end
          binding.pry
        end.compact.uniq
      end
    end
    # players
  end

# def active_players_by_position(position)
#   players = teams.map do |team|
#       team.players
#     end
#   end.flatten
#   players.find_all do |player|
#     player.position == position
#   end
# end
