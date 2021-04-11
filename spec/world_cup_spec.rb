require 'rspec'
require './lib/world_cup'
require './lib/player'
require './lib/team'

RSpec.describe WorldCup do
  xit 'exists' do
    france = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    france.add_player(mbappe)
    france.add_player(pogba)

    croatia = Team.new("Croatia")
    modric = Player.new({name: "Luka Modric", position: "midfielder"})
    vida = Player.new({name: "Domagoj Vida", position: "defender"})
    croatia.add_player(modric)
    croatia.add_player(vida)
    world_cup = WorldCup.new(2018, [france, croatia])

    expect(world_cup).to be_instance_of(WorldCup)
  end

  xit 'has a year' do
    france = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    france.add_player(mbappe)
    france.add_player(pogba)

    croatia = Team.new("Croatia")
    modric = Player.new({name: "Luka Modric", position: "midfielder"})
    vida = Player.new({name: "Domagoj Vida", position: "defender"})
    croatia.add_player(modric)
    croatia.add_player(vida)
    world_cup = WorldCup.new(2018, [france, croatia])

    expect(world_cup.year).to eq(2018)
  end

  xit 'has teams' do
    france = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    france.add_player(mbappe)
    france.add_player(pogba)

    croatia = Team.new("Croatia")
    modric = Player.new({name: "Luka Modric", position: "midfielder"})
    vida = Player.new({name: "Domagoj Vida", position: "defender"})
    croatia.add_player(modric)
    croatia.add_player(vida)
    world_cup = WorldCup.new(2018, [france, croatia])

    expect(world_cup.teams).to eq([france, croatia])
  end

  it 'has active players by position with a team being eliminated' do
    france = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    france.add_player(mbappe)
    france.add_player(pogba)

    croatia = Team.new("Croatia")
    modric = Player.new({name: "Luka Modric", position: "midfielder"})
    vida = Player.new({name: "Domagoj Vida", position: "defender"})
    croatia.add_player(modric)
    croatia.add_player(vida)
    world_cup = WorldCup.new(2018, [france, croatia])

    expect(world_cup.active_players_by_position("midfielder")).to eq([pogba, modric])

    croatia.eliminated = true

    expect(world_cup.active_players_by_position("midfielder")).to eq([pogba])
  end
end
