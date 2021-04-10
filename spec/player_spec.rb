require 'rspec'
require './lib/player'

RSpec.describe Player do
  it 'exists' do
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    expect(player).to be_instance_of(Player)
  end

  it 'has a name' do
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    expect(player.name).to eq("Luka Modric")
  end

  it 'has a position' do
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    expect(player.position).to eq("midfielder")
  end
end
