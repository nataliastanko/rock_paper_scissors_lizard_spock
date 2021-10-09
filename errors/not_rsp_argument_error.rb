# frozen_string_literal: true

##
# Not Rock Paper Scissors Argument Error
class NotRPSArgumentError < ArgumentError
  def initialize(options)
    super
    @options = options
  end

  def message
    "Possible options: #{@options.join(', ')}"
  end
end
