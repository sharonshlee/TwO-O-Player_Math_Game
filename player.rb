class Player
  attr_accessor :lives
  attr_accessor :name
  
  def initialize(name)
    @lives = 3
    @name = name
  end

  def deduct_scores()
   @lives -= 1
  end
 
  def to_s
    "Player #{name}:"
  end

end