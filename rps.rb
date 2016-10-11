# Rock, Paper, Scissors
t="hello"

while t != "quit"
  puts "Loop"
  t="quit"
end

final_quit = "Nothing yet"

while final_quit != "quit"

  puts "Your move: rock, paper, or scissors?"

  user_move = gets.chomp

  user_move=user_move.downcase

  if user_move != "scissors" && user_move != "rock" && user_move != "paper"
    puts "Sorry, you can only type rock, scissors or paper"
  else
    pc_move=rand(3)
    if pc_move==0
      puts pc_move="rock"
    elsif pc_move==1
      puts pc_move="scissors"
    else
      puts pc_move="paper"
    end

    if user_move==pc_move
      puts "It's a tie!!"
    elsif user_move=="rock" && pc_move=="scissors"
      puts "You win!"
    elsif user_move=="paper" && pc_move=="rock"
      puts "You win!"
    elsif user_move=="scissors" && pc_move=="paper"
      puts "You win!"
    elsif user_move=="rock" && pc_move=="paper"
      puts "HAHA, Loser"
    elsif user_move=="paper" && pc_move=="scissors"
      puts "HAHA, Loser"
    else
      puts "HAHA, Loser"
    end
    puts "Type quit if you want to quit"
    final_quit=gets.chomp
    if final_quit.downcase=="quit"
      final_quit = "quit"
    end
  end
end
