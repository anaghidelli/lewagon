require_relative "../views/sessions_view"
class SessionsController

  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = SessionsView.new
  end

  def sign_in
    # 1. get username
    username = @view.ask_for("Username")
    # 2. get password
    password = @view.ask_for("Password")
    # 3. find the user by username
    employee = @employee_repository.find_by_username(username)
    # 4. check password
    if employee && employee.password == password
      @view.successfully_signed_in(employee)
      employee
    else
      @view.wrong_credentials
      sign_in
    end
  end
end
















