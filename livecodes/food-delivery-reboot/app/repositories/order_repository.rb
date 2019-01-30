require "csv"
require_relative "../models/order"
class OrderRepository
  def initialize(csv_file, meal_repository, employee_repository, customer_repository)
    @csv_file = csv_file
    @meal_repository = meal_repository
    @customer_repository = customer_repository
    @employee_repository = employee_repository
    @orders = []
    @next_id = 1
    load_csv
  end

  def all_undelivered_orders
    @orders.select { |order| order.delivered == false }
  end

  def add(order)
    order.id = @next_id
    @orders << order
    @next_id += 1
    save_csv
  end

  def all
    @orders
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      csv << ["id", "delivered", "customer_id", "meal_id", "employee_id"]
      @orders.each do |order|
        csv << [order.id, order.delivered, order.customer.id, order.meal.id, order.employee.id]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:delivered] = row[:delivered] == 'true'
      row[:meal] = @meal_repository.find(row[:meal_id].to_i)
      row[:customer] = @customer_repository.find(row[:customer_id].to_i)
      row[:employee] = @employee_repository.find(row[:employee_id].to_i)
      @orders << Order.new(row)
    end
    @next_id = @orders.last.id + 1 unless @orders.empty?
  end
end
