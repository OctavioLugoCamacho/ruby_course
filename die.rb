require_relative 'auditable'

class Die
  include Auditable

  attr_reader :number

  def roll
    @number = rand(1..6)
    audit
    @number
  end
end