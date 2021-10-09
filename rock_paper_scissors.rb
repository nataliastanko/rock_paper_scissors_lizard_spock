# frozen_string_literal: true

# https://www.codewars.com/kata/5672a98bdbdd995fad00000f
# Rock Paper Scissors
# Let's play! You have to return which player won! In case of a draw return Draw!.

# Examples:

# rps('scissors','paper') // Player 1 won!
# rps('scissors','rock') // Player 2 won!
# rps('paper','paper') // Draw!

# require 'pry'

##
# Describes RockPaperScissors game
class RockPaperScissors
  WINS = { paper: :rock, scissors: :paper, rock: :scissors }.freeze

  def winner(choice1, choice2)
    return :draw if choice1 == choice2

    WINS[choice1] == choice2 ? choice1 : choice2
  end
end
