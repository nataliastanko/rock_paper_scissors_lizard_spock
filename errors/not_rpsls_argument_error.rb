# frozen_string_literal: true

##
# Not Rock Paper Scissors Lizard Spock Argument Error
class NotRpslsArgumentError < ArgumentError
  def initialize(options)
    super
    @options = options
  end

  def message
    "Possible options: #{@options.join(', ')}"
  end
end
