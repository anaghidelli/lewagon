class MealsView
  def display_meals(meals)
    meals.each do |meal|
      puts "Name: #{meal.name}, Price: #{meal.price}"
    end
  end

  def ask(something)
    puts "Enter #{something}"
    gets.chomp
  end
end
