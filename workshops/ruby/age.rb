puts "Enter you age"
age = gets.chomp
if age.class == String
  puts "Enter an integer"
else
  if age >= 18
    puts "You can drive"
  else
    puts "Stay at home"
  end
end
