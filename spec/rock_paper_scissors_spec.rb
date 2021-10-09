# frozen_string_literal: true

require_relative '../rock_paper_scissors'

RSpec.describe 'rock paper scissors game' do
  it 'paper beats rock' do
    expect(RockPaperScissors.new.winner(:rock, :paper)).to eq :paper
  end
end
