module RpsGem
  class LetsPlay
    def play(player_op)
      options = ["rock","paper","scissors"]
      player_choice = options.find_index {|choice| choice.match(/^#{player_op.downcase}/)}
      computer_choice = rand(options.length)
      return "Invalid Choice :P" if player_choice.nil?
      return "Tie!" if options[computer_choice]==options[player_choice]
      puts "Computer played #{options[computer_choice]}"
      return "You Won!" if self.winner(options[player_choice], options[computer_choice])
      "You Loose!"
    end
    
    def winner(user, comp)
      ["rockscissors", "scissorspaper", "paperrock"].include?(user+comp)
    end

    def self.example
      path = File.dirname(__FILE__)
      system(" man #{path}/rps_gem_man")
    end

  end
end