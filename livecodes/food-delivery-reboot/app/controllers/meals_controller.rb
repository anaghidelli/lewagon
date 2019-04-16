require_relative "../views/meals_view"
require_relative "../models/meal"
class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def add
    name = @view.ask_for("Name")
    price = @view.ask_for("Price").to_i
    meal = Meal.new({name: name, price: price})
    @meal_repository.add(meal)
  end

  def list
    meals = @meal_repository.all
    @view.display(meals)
  end
end
