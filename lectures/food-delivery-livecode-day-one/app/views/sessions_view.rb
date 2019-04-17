require_relative "base_view"
class SessionsView < BaseView

  def wrong_credentials
    puts "Wrong credentials, try again"
  end

  def successfully_signed_in(employee)
    if employee.manager?
      puts "[MANAGER] Welcome #{employee.username}"
    else
      puts "[DELIVERY GUY] Welcome #{employee.username}"
    end
  end
end
