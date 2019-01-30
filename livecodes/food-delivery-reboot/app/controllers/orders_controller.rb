require_relative "../views/orders_view"
require_relative "../controllers/meals_controller"
require_relative "../controllers/customers_controller"

class OrdersController
  def initialize(order_repository, meal_repository, customer_repository, employee_repository)
    @order_repository = order_repository
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @view = OrdersView.new
  end

  def list_undelivered_orders
    orders = @order_repository.all_undelivered_orders
    @view.display_undelivered_orders(orders)
  end

  def add
    MealsController.new(@meal_repository).list
    meal_id = @view.ask("Enter the id of the meal for this order").to_i
    meal = @meal_repository.find(meal_id)
    CustomersController.new(@customer_repository).list
    customer_id = @view.ask("Enter the id of the customer for this order").to_i
    customer = @customer_repository.find(customer_id)
    #list employees
    employee_id = @view.ask("Enter the id of the employee for this order").to_i
    employee = @employee_repository.find(employee_id)
    order = Order.new(meal: meal, customer: customer, employee: employee)
    @order_repository.add(order)
  end
end
