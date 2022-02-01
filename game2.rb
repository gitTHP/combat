require './player.rb'
require './player1.rb'
class GameLvl2
    attr_accessor :human_player 
    attr_accessor :enemies 

    def initialize 
        puts "what is your name ?"

        human_name=gets.chomp

        @human_player=HumanPlayer.new(human_name,1,100)
        @enemies=[Player.new("player1",10),Player.new("player2",10),Player.new("player3",10),Player.new("player4",10)]

    end 

    def play_game

        while @enemies.length>0
        @enemies.each do |enemy|

            @human_player.attack(enemy) 

            enemy.attack(@human_player)

            @human_player.search_weapon 
            
            @human_player.search_health_pack

            if enemy.life_points <=0 
              @enemies.delete(enemy)  
            end 

        

            

        end
     end
    end
end 

game=GameLvl2.new 

game.play_game


