class Question
  attr_accessor :number1
  attr_accessor :number2

  def initialize()
    @number1 = rand(20)
    @number2 = rand(20)
  end

  def question()
    "What does #{number1} plus #{number2} equal?"
  end
  
  def correct_answer?(player_answer)
    number1 + number2 == player_answer.to_i
  end

end