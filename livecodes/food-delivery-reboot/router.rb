class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true
  end

  def run
    while @running
      display_menu
      user_choice = gets.chomp.to_i
      route_action(user_choice)
    end
  end

  def display_menu
    puts "Choose an option:"
    puts "1. Add a meal"
    puts "2. List all meals"
    puts "3. Quit"
  end

  def route_action(user_choice)
    case(user_choice)
    when 1
      @meals_controller.add
    when 2
      @meals_controller.list
    when 3
      @running = false
    else
      "Incorrect option chosen"
    end
  end
end
