# TODO: implement the router of your app.
class Router
  def initialize(meals_controller, customers_controller, sessions_controller, orders_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @orders_controller = orders_controller
    @running = true
  end

  def run
    while @running
    @employee = @sessions_controller.sign_in
      while @employee
        if @employee.manager?
          choice = display_manager_menu
          manager_action(choice)
        else
          choice = display_delivery_guy_menu
          delivery_guy_action(choice)
        end
      end
    end
  end

  def display_manager_menu
    puts "What would you like to do. Please choose a number"
    puts "1. List all meals"
    puts "2. Add a meal"
    puts "3. List all customers"
    puts "4. Add a customer"
    puts "5. List undelivered orders"
    puts "6. Add an order"
    puts "7. Sign out"
    puts "8. Quit"
    gets.chomp.to_i
  end

  def manager_action(choice)
    case(choice)
    when 1 then @meals_controller.list
    when 2 then @meals_controller.create
    when 3 then @customers_controller.list
    when 4 then @customers_controller.create
    when 5 then @orders_controller.list_undelivered_orders
    when 6 then @orders_controller.add
    when 7 then @employee = nil
    when 8 then @running = false
      @employee = nil
    else
      puts "You entered the wrong number"
    end
  end

  def display_delivery_guy_menu
    puts "1. List all orders"
    puts "2. Mark order as delivered"
    puts "7. Sign out"
    puts "8. Exit"
    gets.chomp.to_i
  end

  def delivery_guy_action(choice)
    case(choice)
    when 1 then p "All orders"
    when 2 then p "Mark order"
    when 7 then @employee = nil
    when 8 then @running = false
      @employee = nil
    else
      puts "You entered the wrong number"
    end
  end
end






















