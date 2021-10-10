# frozen_string_literal: true

require_relative '../rock_paper_scissors_lizard_spock'

RSpec.describe 'rock paper scissors lizard spock game' do
  it 'paper covers rock' do
    expect(RockPaperScissorsLizardSpock.new(:paper, :rock).winner).to eq :paper
    expect(RockPaperScissorsLizardSpock.new(:rock, :paper).winner).to eq :paper
  end

  it 'scissors cuts paper' do
    expect(RockPaperScissorsLizardSpock.new(:scissors, :paper).winner).to eq :scissors
    expect(RockPaperScissorsLizardSpock.new(:paper, :scissors).winner).to eq :scissors
  end

  it 'rock crushes scissors' do
    expect(RockPaperScissorsLizardSpock.new(:rock, :scissors).winner).to eq :rock
    expect(RockPaperScissorsLizardSpock.new(:scissors, :rock).winner).to eq :rock
  end

  it 'rock crushes lizard' do
    expect(RockPaperScissorsLizardSpock.new(:rock, :lizard).winner).to eq :rock
    expect(RockPaperScissorsLizardSpock.new(:lizard, :rock).winner).to eq :rock
  end

  it 'lizard poisons spock' do
    expect(RockPaperScissorsLizardSpock.new(:spock, :lizard).winner).to eq :lizard
    expect(RockPaperScissorsLizardSpock.new(:lizard, :spock).winner).to eq :lizard
  end

  it 'spock smashes scissors' do
    expect(RockPaperScissorsLizardSpock.new(:spock, :scissors).winner).to eq :spock
    expect(RockPaperScissorsLizardSpock.new(:scissors, :spock).winner).to eq :spock
  end

  it 'scissors decapitates lizard' do
    expect(RockPaperScissorsLizardSpock.new(:lizard, :scissors).winner).to eq :scissors
    expect(RockPaperScissorsLizardSpock.new(:scissors, :lizard).winner).to eq :scissors
  end

  it 'lizard eats paper' do
    expect(RockPaperScissorsLizardSpock.new(:lizard, :paper).winner).to eq :lizard
    expect(RockPaperScissorsLizardSpock.new(:paper, :lizard).winner).to eq :lizard
  end

  it 'paper disproves spock' do
    expect(RockPaperScissorsLizardSpock.new(:spock, :paper).winner).to eq :paper
    expect(RockPaperScissorsLizardSpock.new(:paper, :spock).winner).to eq :paper
  end

  it 'spock vaporizes rock' do
    expect(RockPaperScissorsLizardSpock.new(:spock, :rock).winner).to eq :spock
    expect(RockPaperScissorsLizardSpock.new(:rock, :spock).winner).to eq :spock
  end
end

RSpec.describe 'rock paper scissors lizard spock game wins meta' do
  it 'describes if player won' do
    expect(RockPaperScissorsLizardSpock.new(:rock, :paper).wins?(:paper)).to eq true
    expect(RockPaperScissorsLizardSpock.new(:paper, :rock).wins?(:paper)).to eq true
    expect(RockPaperScissorsLizardSpock.new(:rock, :rock).wins?(:rock)).to eq false
    expect(RockPaperScissorsLizardSpock.new(:rock, :rock).wins?(:paper)).to eq false
  end
end

RSpec.describe 'rock paper scissors lizard spock game exceptions' do
  it 'is a draw' do
    expect(RockPaperScissorsLizardSpock.new(:rock, :rock).winner).to eq :draw
    expect(RockPaperScissorsLizardSpock.new(:paper, :paper).winner).to eq :draw
    expect(RockPaperScissorsLizardSpock.new(:scissors, :scissors).winner).to eq :draw
    # expect(RockPaperScissorsLizardSpock.new(:spock, :spock).winner).to eq :draw
    expect(RockPaperScissorsLizardSpock.new(:lizard, :lizard).winner).to eq :draw
  end

  it 'fails if given options different than rock, paper, scissors, lizard, spock' do
    e_msg = 'Possible options: rock, paper, scissors, lizard, spock'
    expect { RockPaperScissorsLizardSpock.new(:voyager, :rock).winner }.to raise_error(NotRpslsArgumentError)
    expect { RockPaperScissorsLizardSpock.new(:rock, :thumb).winner }.to raise_error(NotRpslsArgumentError)
    expect { RockPaperScissorsLizardSpock.new(:rock, :thumb).winner }.to raise_error(NotRpslsArgumentError, e_msg)
    expect { RockPaperScissorsLizardSpock.new(:voyager, :thumb).winner }.to raise_error(NotRpslsArgumentError, e_msg)
  end

  it 'responds to the question if draw' do
    expect(RockPaperScissorsLizardSpock.new(:rock, :paper).draw?).to eq false
    expect(RockPaperScissorsLizardSpock.new(:paper, :paper).draw?).to eq true
    expect(RockPaperScissorsLizardSpock.new(:scissors, :scissors).draw?).to eq true
    expect(RockPaperScissorsLizardSpock.new(:lizard, :lizard).draw?).to eq true
    # expect(RockPaperScissorsLizardSpock.new(:spock, :spock).draw?).to eq true
  end
end
