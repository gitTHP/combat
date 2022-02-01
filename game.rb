require './player';

class Game 

    def play
    player1=Player.new("Johnny",10);
    player2=Player.new("Jeremy",10);

    while(player1.life_points >0 || player2.life_points > 0)
        player1.attack(player2);
        player2.attack(player1);

        if player1.life_points <=0 || player2.life_points <=0 
            break
        end
    end
    end

end

game=Game.new 
game.play