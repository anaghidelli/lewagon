class MealsView
  def display_meals(meals)
    meals.each do |meal|
      puts "Id:#{meal.id}, Name: #{meal.name}, Price: #{meal.price}"
    end
  end

  def ask(something)
    puts "Enter #{something}"
    gets.chomp
  end
end
