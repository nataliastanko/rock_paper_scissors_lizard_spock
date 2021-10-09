# frozen_string_literal: true

require_relative '../rock_paper_scissors'

RSpec.describe 'rock paper scissors game' do
  it 'paper beats rock' do
    expect(RockPaperScissors.new(:paper, :rock).winner).to eq :paper
    expect(RockPaperScissors.new(:rock, :paper).winner).to eq :paper
  end

  it 'scissors beat paper' do
    expect(RockPaperScissors.new(:scissors, :paper).winner).to eq :scissors
    expect(RockPaperScissors.new(:paper, :scissors).winner).to eq :scissors
  end

  it 'rock beats scissors' do
    expect(RockPaperScissors.new(:rock, :scissors).winner).to eq :rock
    expect(RockPaperScissors.new(:scissors, :rock).winner).to eq :rock
  end

  it 'is a draw' do
    expect(RockPaperScissors.new(:rock, :rock).winner).to eq :draw
    expect(RockPaperScissors.new(:paper, :paper).winner).to eq :draw
    expect(RockPaperScissors.new(:scissors, :scissors).winner).to eq :draw
  end

  it 'fails if given options different than rock paper or scissors' do
    error_message = 'Possible options: rock, paper, scissors'
    expect { RockPaperScissors.new(:spock, :rock).winner }.to raise_error(NotRPSArgumentError)
    expect { RockPaperScissors.new(:rock, :lizard).winner }.to raise_error(NotRPSArgumentError)
    expect { RockPaperScissors.new(:rock, :lizard).winner }.to raise_error(NotRPSArgumentError, error_message)
  end

  it 'describes which player won' do
    expect(RockPaperScissors.new(:rock, :paper).wins?(:paper)).to eq true
    expect(RockPaperScissors.new(:rock, :rock).wins?(:rock)).to eq false
    expect(RockPaperScissors.new(:rock, :rock).wins?(:paper)).to eq false
  end
end
