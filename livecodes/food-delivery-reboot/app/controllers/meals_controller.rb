require_relative "../views/meals_view"
require_relative "../models/meal"
class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def list
    meals = @meal_repository.all
    @view.display_meals(meals)
  end

  def create
    name = @view.ask("Name")
    price = @view.ask("Price").to_i
    meal = Meal.new(name: name, price: price)
    @meal_repository.add(meal)
  end
end
