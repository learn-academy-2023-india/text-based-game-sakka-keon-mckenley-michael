class MurderCastleMysteryWithHallways
    def initialize
      @player = {}
      @items = []       # Items collected by the detective
      @victim = "Unknown"
      @culprit = nil
      @ghost_mode = false  # Indicate that the detective is not initially aware of being a ghost
    end
  
    def start_game
      puts "Welcome to the Murder Castle Mystery Game with Hallways!"
      puts "What is your name, detective?"
      @player[:name] = gets.chomp.capitalize
  
      puts "\nHello, Detective #{@player[:name]}! You find yourself in a mysterious and eerie mansion."
       
      explore_mansion
    end
end    

  
    def explore_mansion
  
      puts "\nYou find yourself in a dimly lit and spooky mansion, shrouded in mist and silence."
      puts "What do you want to do?"
      puts "1. Examine the entrance hall for clues."
      puts "2. Explore the hallways."
      puts "3. Inspect the basement."
  
      choice = gets.chomp.to_i
  
      case choice
      when 1
        examine_entrance_hall
      when 2
        explore_hallways
      when 3
        inspect_basement
      else
        invalid_choice
      end
    end
  
    def examine_entrance_hall
  
      puts "\nYou carefully examine the entrance hall, feeling an eerie presence around you."
      puts "You find a strange symbol carved into the floor."
  
      trigger_spooky_voice("You dare to intrude upon this cursed place. Turn back, detective.")
  
      # Check for traps
      if rand(1..10) <= 3  # 30% chance of encountering a trap
        puts "As you investigate, a chilling gust of wind fills the hall, and a trap is triggered!"
        # resolve_trap
        puts "You resolved a trap!, What would you like to do?"
      else
        puts "What do you want to do?"
        puts "1. Continue investigating the mansion."
        puts "2. Explore the hallways."
        puts "3. Inspect the basement."
  
        choice = gets.chomp.to_i
  
        case choice
        when 1
          explore_mansion
        when 2
          explore_hallways
        when 3
          inspect_basement
        else
          invalid_choice
        end
      end
    end
  
    def explore_hallways
  
      puts "\nYou decide to explore the hallways, unsure of what secrets they may hold."
      puts "You come across several doorways and corridors. Each hallway seems to have a mysterious aura."
  
      puts "What do you want to do?"
      puts "1. Enter a doorway."
      puts "2. Continue exploring the hallways."
      puts "3. Inspect the basement."
  
      choice = gets.chomp.to_i
  
      case choice
      when 1
        enter_doorway
      when 2
        explore_hallways
      when 3
        inspect_basement
      else
        invalid_choice
      end
    end
  
    def enter_doorway
  
      puts "\nYou enter a doorway, and the hallway beyond is dimly lit with flickering candles."
      puts "The portraits on the walls seem to gaze at you with hollow eyes."
  
      # Check for items
      if rand(1..10) <= 6  # 60% chance of finding an item
        generate_item = "clue"
        found_item = generate_item
        puts "Congratulations! You found #{found_item}. The air becomes even colder."
        @items << found_item
      end
  
      # Check for traps
      if rand(1..10) <= 4  # 40% chance of encountering a trap
        puts "As you walk down the hallway, the candles flicker, and a trap is triggered!"
        resolve_trap
      else
        puts "What do you want to do?"
        puts "1. Continue exploring the hallways."
        puts "2. Return to the entrance hall."
        puts "3. Inspect the basement."
  
        choice = gets.chomp.to_i
  
        case choice
        when 1
          explore_hallways
        when 2
          explore_mansion
        when 3
          inspect_basement
        else
          invalid_choice
        end
      end
    end
  
    # ... (remaining methods)

    def inspect_basement
    
        puts "\nYou enter a doorway, and the hallway beyond is dimly lit with flickering candles."
        puts "The portraits on the walls seem to gaze at you with hollow eyes."
    
        # Check for items
        if rand(1..10) <= 6  # 60% chance of finding an item
          generate_item = "clue"
          found_item = generate_item
          puts "Congratulations! You found #{found_item}. The air becomes even colder."
          @items << found_item
        end
    
        # Check for traps
        if rand(1..10) <= 4  # 40% chance of encountering a trap
          puts "As you walk down the hallway, the candles flicker, and a trap is triggered!"
        #   resolve_trap
          puts "You resolved the trap! What do you want to do now?"
        else
          puts "What do you want to do?"
          puts "1. Continue exploring the hallways."
          puts "2. Return to the entrance hall."
          puts "3. Inspect the basement."
    
          choice = gets.chomp.to_i
    
          case choice
          when 1
            explore_hallways
          when 2
            explore_mansion
          when 3
            inspect_basement
          else
            # invalid_choice
          end
        end
      end

    def trigger_spooky_voice(message)
      puts "\n[Spooky Voice] #{message}"
    end
  
    # ... (other methods)
  
  # Start the Murder Castle Mystery Game with Hallways
  murder_castle_mystery_with_hallways = MurderCastleMysteryWithHallways.new
  murder_castle_mystery_with_hallways.start_game
  

