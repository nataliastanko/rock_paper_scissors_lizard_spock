# frozen_string_literal: true

##
# Not Rock Paper Scissors Argument Error
class NotRPSArgumentError < ArgumentError
  def message(options)
    "Possible options: #{options.join(', ')}"
  end
end
