require './player.rb'

class HumanPlayer < Player
    attr_accessor :weapon_level

    def initialize(name,weapon_level,life_points)
        @name=name
        @weapon_level=weapon_level 
        @life_points=life_points
    end 

    def show_state 
        puts "#{@name} a #{@life_points} points de vie et un niveau d'arme de #{@weapon_level}"

    end 

    def attack(player)

       
        
         if @life_points >0  
            if player.life_points >0 
                getDamage=compute_damage 
                player.gets_damage(getDamage)
            else 
                puts "#{player.name} est deja mort"
            end
        else 
            puts "#{@name} est deja mort et n'a plus de points de vie"
        end

    end 

    def search_weapon 
        getRoll=rand(1..6);
        if getRoll > @weapon_level 
            @weapon_level=getRoll
        end
    end

    def compute_damage 
        getRand=rand(1..6)
        damage=getRand*@weapon_level 
        return damage
    end 

    def search_health_pack 
        getHealth=rand(1..6)
         if getHealth==1
            puts "tu n'a rien trouvé"
         elsif getHealth>=2 && getHealth <=5 
            @life_points+=50 
            if @life_points >=100 
                @life_points=100
                
                puts "Bravo, tu a maintenant #{@life_points} points de vie"
            end 

        else 
            @life_points+=80 

            if @life_points >=100 
                @life_points=100
                
                puts "Bravo, tu a maintenant #{@life_points} points de vie"
            end

        end

        end

    end
