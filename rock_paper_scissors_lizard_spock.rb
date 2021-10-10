# frozen_string_literal: true

require_relative 'errors/not_rpsls_argument_error'

##
# Describes Rock Paper Scissors Lizard Spock game
# Raise an error if initial parameters do not meet the game's criteria
class RockPaperScissorsLizardSpock
  OPTIONS = %i[rock paper scissors lizard spock].freeze
  WINS = {
    paper: %i[rock],
    scissors: %i[paper],
    rock: %i[scissors lizard],
    lizard: []
  }.freeze

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2

    raise_error_if_choice_not_valid choice1
    raise_error_if_choice_not_valid choice2
  end

  def raise_error_if_choice_not_valid(choice)
    raise_rpsls_argument_error unless OPTIONS.include?(choice)
    raise_error_if_wins_not_exist choice
  end

  def raise_error_if_wins_not_exist(choice)
    raise RuntimeError if WINS[choice].nil?
  end

  def raise_rpsls_argument_error
    rpse = NotRpslsArgumentError.new(OPTIONS)
    raise rpse
  end

  def wins?(choice)
    winner == choice
  end

  def draw?
    winner == :draw
  end

  def winner
    return :draw if @choice1 == @choice2

    WINS[@choice1].include?(@choice2) ? @choice1 : @choice2
  end
end
