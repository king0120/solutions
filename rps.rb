def play_game(player1, player2)
  outcome = {
  :rock     => {:rock => :draw,
                :paper => :paper,
                :scissors => :rock},

  :paper    => {:rock => :paper,
                :paper => :draw,
                :scissors => :scissors},

  :scissors => {:rock => :rock,
                :paper => :scissors,
                :scissors => :draw}
            }
  puts "Winner for #{player1} vs #{player2} is #{outcome[player1][player2]}"
end

puts 'Player 1 move?'
player1 = gets.chomp.to_sym

puts 'Player 2 move?'
player2 = gets.chomp.to_sym

play_game(player1, player2)
