# TODO: require relevant files to bootstrap the app.
# Then you can test your program with:
# ruby app.rb
require_relative "app/repositories/meal_repository"
require_relative "app/controllers/meals_controller"
require_relative 'app/repositories/customer_repository'
require_relative 'app/controllers/customers_controller'
require_relative "app/repositories/employee_repository"
require_relative 'app/controllers/sessions_controller'
require_relative "app/repositories/order_repository"
require_relative 'app/controllers/orders_controller'
require_relative "router"



meals_csv_file = File.join(__dir__, "data/meals.csv")
customers_csv_file = File.join(__dir__, "data/customers.csv")
employee_csv_file = File.join(__dir__, "data/employees.csv")
orders_csv_file = File.join(__dir__, "data/orders.csv")

meal_repo = MealRepository.new(meals_csv_file)
meals_controller = MealsController.new(meal_repo)

customer_repo = CustomerRepository.new(customers_csv_file)
customers_controller = CustomersController.new(customer_repo)

employee_repo = EmployeeRepository.new(employee_csv_file)
sessions_controller = SessionsController.new(employee_repo)

order_repo =  OrderRepository.new(orders_csv_file, meal_repo, employee_repo, customer_repo)
orders_controller = OrdersController.new(order_repo, meal_repo, customer_repo, employee_repo)

router = Router.new(meals_controller, customers_controller, sessions_controller, orders_controller)
router.run
