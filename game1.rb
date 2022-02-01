require './player.rb'
require './player1.rb'

class GameLvl
    def play_game
        puts "quelle est ton pseudo de jouer?"
        pseudo=gets.chomp

        humanPlayer=HumanPlayer.new(pseudo,1,100)

        player1=Player.new("computer1",10)
        player2=Player.new("computer2",10)

        while humanPlayer.life_points>=0 || player1.life_points >=0 || player2.life_points >=0 

            humanPlayer.attack(player1)
            
            player1.show_state 

            humanPlayer.attack(player2)

            player2.show_state

            player1.attack(humanPlayer);

            humanPlayer.show_state

            player2.attack(humanPlayer); 

            humanPlayer.show_state 

            humanPlayer.search_weapon;
            humanPlayer.search_health_pack; 

            if player1.life_points <=0 && player2.life_points <=0 
                puts "bravo,#{humanPlayer.name} est gagant!!"
                break

            end 

            if humanPlayer.life_points <=0 
                puts "les machines ont detruit l'humain, comme ca craint d'etre le cas dans un avenir proche!!"
                break

            end


        end
    end

end

gameLvl=GameLvl.new 

gameLvl.play_game