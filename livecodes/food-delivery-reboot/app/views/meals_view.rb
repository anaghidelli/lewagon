class MealsView
  def ask_for(something)
    puts "#{something}?"
    gets.chomp
  end

  def display(meals)
    meals.each do |meal|
      puts "id: #{meal.id}, name: #{meal.name}, price: £#{meal.price}"
    end
  end
end
