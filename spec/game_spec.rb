require 'game'

describe Game do 

let(:game){Game.new}

context "with no strikes or spares" do

  it 'can return the score of ten gutter frames' do
    20.times {game.roll(0)}
    expect(game.overall_score).to eq 0
  end

  it 'can return the score of ten non-bonus frames' do
    20.times {game.roll(4)}
    expect(game.overall_score).to eq 80
  end
end

context "with strikes" do

  it 'can return the score of a single strike frame and 9 non-bonus frames' do
    2.times {game.roll(2)}
    game.roll(10)
    16.times {game.roll(2)}
    expect(game.overall_score).to eq 50
  end

  it 'can return the score if there are consecutive strikes' do
    2.times {game.roll(10)}
    16.times {game.roll(2)}
    expect(game.overall_score).to eq 68
  end
end

context "with spares" do

  it 'can return the score of a single spare frame' do
    3.times {game.roll(5)}
    17.times {game.roll(2)}
    expect(game.overall_score).to eq 54
  end

  it 'can return the score of consecutive spare frames' do
    4.times {game.roll(5)}
    16.times {game.roll(2)}
    expect(game.overall_score).to eq 59
  end
end

context "with bonus balls" do

  it 'can return the score if the 10th frame is a strike' do
    18.times {game.roll(1)}
    game.roll(10)
    2.times {game.roll(1)}
    expect(game.overall_score).to eq 30
  end

  it 'can return the score if the 10th frame is a spare' do
    18.times {game.roll(1)}
    2.times {game.roll(5)}
    game.roll(1)
    expect(game.overall_score).to eq 29
  end

context "perfect game" do

  it 'can return the score of a perfect game' do
    12.times {game.roll(10)}
    expect(game.overall_score).to eq 300
  end    
end
end

end
