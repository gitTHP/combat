class Player 
    attr_accessor :name
    attr_accessor :life_points

    def initialize (name,life_points)
        @name=name 
        @life_points=life_points

    end

    def show_state
        puts "#{@name} a #{@life_points} points de vie"
    end 

    def gets_damage(life_points)
        if @life_points >0 
        puts "#{@name} subi #{life_points} de degat"
        @life_points =@life_points-life_points 
           if @life_points >0 
                puts "#{@name} a maintenant #{@life_points} points de vie"

           else
             puts "#{@name} a plus de points de vie et vient d'etre eliminé"
           end
        else 
            puts "#{@name} est deja mort"

        end
    end 

    def attack(target) 
        if @life_points >0 
            puts "#{@name} attaque #{target.name}"
            damage=compute_damage;

            target.gets_damage(damage)

        else 
            puts "#{@name} est deja mort et ne peux plus attaqué"

        end
        
    end

    def compute_damage
        return rand(1..6)

    end

end