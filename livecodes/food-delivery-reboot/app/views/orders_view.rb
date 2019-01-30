class OrdersView
  def display_undelivered_orders(undelivered_orders)
    undelivered_orders.each do |order|
      puts "Customer Name:#{order.customer.name}, Meal Name:#{order.meal.name}"
    end
  end

  def ask(something)
    puts "Enter #{something}"
    gets.chomp
  end
end
