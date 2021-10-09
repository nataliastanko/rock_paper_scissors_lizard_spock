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

  it 'describes which player won' do
    expect(RockPaperScissorsLizardSpock.new(:rock, :paper).wins?(:paper)).to eq true
    expect(RockPaperScissorsLizardSpock.new(:rock, :rock).wins?(:rock)).to eq false
    expect(RockPaperScissorsLizardSpock.new(:rock, :rock).wins?(:paper)).to eq false
  end
end

RSpec.describe 'rock paper scissors lizard spock game exceptions' do
  it 'is a draw' do
    expect(RockPaperScissorsLizardSpock.new(:rock, :rock).winner).to eq :draw
    expect(RockPaperScissorsLizardSpock.new(:paper, :paper).winner).to eq :draw
    expect(RockPaperScissorsLizardSpock.new(:scissors, :scissors).winner).to eq :draw
  end

  it 'fails if given options different than rock paper or scissors' do
    error_message = 'Possible options: rock, paper, scissors, lizard, spock'
    expect { RockPaperScissorsLizardSpock.new(:voyager, :rock).winner }.to raise_error(NotRpslsArgumentError)
    expect { RockPaperScissorsLizardSpock.new(:rock, :thumb).winner }.to raise_error(NotRpslsArgumentError)
    expect { RockPaperScissorsLizardSpock.new(:rock, :thumb).winner }.to raise_error(NotRpslsArgumentError, error_message)
  end

  it 'responds to the question if draw' do
    expect(RockPaperScissorsLizardSpock.new(:rock, :paper).draw?).to eq false
    expect(RockPaperScissorsLizardSpock.new(:paper, :paper).draw?).to eq true
  end
end
