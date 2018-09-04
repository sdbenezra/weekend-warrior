require 'pry'
class Robot
  attr_accessor :name

  def initialize
    @name = set_name
  end

  def reset
    @name = set_name 
  end

  def set_name
    name = (Array('A'..'Z').sample + Array('A'..'Z').sample + Array(0..9).sample + Array(0..9).sample).join
    return name
  end
end
