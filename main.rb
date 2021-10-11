# Create a 2-Player math game where players take turns 
# to answer simple math addition problems. 
# A new math question is generated for each turn by
# picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and 
# must answer correctly or lose a life.
require './player'
require './question'

players = [Player.new('1'), Player.new('2')]
is_game_over = false
player_number = 0
while (!is_game_over)
  question = Question.new
  player = players[player_number]
  
  player_number += player_number == 1 ? -1 : 1
  
  puts "#{player.to_s} #{question.question}"

  print "> "
  player_answer = $stdin.gets.chomp

  is_correct_answer = question.correct_answer?(player_answer)

  if is_correct_answer 
    puts "#{player.to_s} YES! You are correct."
  else
    puts "#{player.to_s} Seriously? No!"
    players[player_number].deduct_scores
  end

  puts "P1: #{players[0].lives}/3 vs P2: #{players[1].lives}/3"
  puts

  if players[player_number].lives > 0 
    is_game_over = false
    puts "----------New Turn------------"
  else
    is_game_over = true
    puts "#{player.to_s} wins with a score of #{player.lives}/3"
    puts "----------Game Over-----------"
    puts "Good bye!"
  end # if
  
end # while

