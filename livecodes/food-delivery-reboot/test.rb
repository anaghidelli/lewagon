require_relative "app/repositories/employee_repository"
csv_file = File.join(__dir__, "data/employees.csv")
p EmployeeRepository.new(csv_file)

