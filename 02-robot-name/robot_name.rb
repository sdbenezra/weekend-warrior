require 'pry'
class Robot
  attr_accessor :name

  def initialize
    @name = (Array('A'..'Z').sample(2) + Array(0..9).sample(3)).join
  end
  # The .sample(2) does not take into account duplicate alpha characters or digits.
  def reset
    @name = (Array('A'..'Z').sample(2) + Array(0..9).sample(3)).join # this should be in a method to avoid duplication.
  end
end
