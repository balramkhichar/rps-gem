module RpsGem
  class LetsPlay
    def play(player_op)
      options = ["rock","paper","scissors"]
      player_choice = options.find_index {|choice| choice.match(/^#{player_op.downcase}/)}
      computer_choice = rand(options.length)
      if player_choice.nil?
        "Invalid Choice :P"
      else
        if(options[computer_choice]==options[player_choice])
          "Tie!"
        else
          puts "Computer plyaed #{options[computer_choice]}"
          if(self.winner(options[player_choice], options[computer_choice])==options[player_choice])
            "You Won!"
          else
            "You Loose!"
          end
        end  
      end
    end
    def winner(p1, p2)
      wins = {rock: :scissors, scissors: :paper, paper: :rock}
      {true => p1, false => p2}[wins[p1] == p2]
    end

  end
end
