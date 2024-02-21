class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # raise
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.where(restaurant_id: params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to restaurant_path(@restaurant)
  end

  # def destroy
  #   @task = Task.find(params[:id])
  #   @task.destroy
  #   # No need for app/views/restaurants/destroy.html.erb
  #   redirect_to tasks_path, status: :see_other
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
