# frozen_string_literal: true

require_relative '../rock_paper_scissors'

RSpec.describe 'rock paper scissors game' do
  it 'paper beats rock' do
    expect(RockPaperScissors.new.winner(:rock, :paper)).to eq :paper
    expect(RockPaperScissors.new.winner(:paper, :rock)).to eq :paper
  end

  it 'scissors beat paper' do
    expect(RockPaperScissors.new.winner(:scissors, :paper)).to eq :scissors
    expect(RockPaperScissors.new.winner(:paper, :scissors)).to eq :scissors
  end

  it 'rock beats scissors' do
    expect(RockPaperScissors.new.winner(:rock, :scissors)).to eq :rock
    expect(RockPaperScissors.new.winner(:scissors, :rock)).to eq :rock
  end
end
