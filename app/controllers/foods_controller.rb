class FoodsController < ApplicationController

    def index 
        foods = Food.all
        render json: foods.to_json(include: {trip: {only: [:id, :location, :country, :date, :image]}}, only:[:id, :name, :price, :rating, :description] )
    end 

    def show 
        food = Food.find(params[:id])
        render json: food.to_json(include: {trip: {only: [:id, :location, :country, :date, :image]}}, only:[:id,:name, :price, :rating, :description] )
    end 

    def create
       food = Food.new(food_params)
       if food.save
        render json: food.to_json(include: {trip: {only: [:id, :location, :country, :date, :image]}}, only:[:id,:name, :price, :rating, :description])
       else
        render json: {error: "Your food couldn't be added"}
       end
    end 

    private

    def food_params
        params.require(:food).permit(:name, :price, :rating, :description, :trip_id)
    end 

end
    
  