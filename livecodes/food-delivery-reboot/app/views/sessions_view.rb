class SessionsView
  def ask(something)
    puts "Enter #{something}"
    gets.chomp
  end

  def wrong_credentials
    puts "You entered the wrong credentials.... try again"
  end

  def welcome(username)
    puts "Welcome #{username}"
  end
end
