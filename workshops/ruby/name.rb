def full_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
end
first_name = "sam"
full_name = full_name(first_name, "willis")
greet = "Hello #{full_name}"
puts greet
