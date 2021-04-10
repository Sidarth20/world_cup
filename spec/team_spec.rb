require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Player do
  it 'exists' do
    team = Team.new("France")

    expect(team).to be_instance_of(Team)
  end

  it 'has a country' do
    team = Team.new("France")

    expect(team.country).to eq("France")
  end

  it 'is eliminated?' do
    team = Team.new("France")

    expect(team.eliminated?).to eq(false)

    team.eliminated = true

    expect(team.eliminated?).to eq(true)
  end

  it 'has players'do
    team = Team.new("France")

    expect(team.players).to eq([])

  end

  it 'can add players'do
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    team.add_player(mbappe)
    team.add_player(pogba)

    expect(team.players).to eq([mbappe, pogba])
  end

  it 'has players by position' do
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    team.add_player(mbappe)
    team.add_player(pogba)

    expect(team.players_by_position("midfielder")).to eq([pogba])
    expect(team.players_by_position("defender")).to eq([])
  end
end
