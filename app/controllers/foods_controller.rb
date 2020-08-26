class FoodsController < ApplicationController

    def index 
        foods = Food.all
        render json: foods.to_json(include: {trip: {only: [:location, :country, :date, :image]}}, only:[:name, :price, :rating, :description] )
    end 

    def show 
        food = Food.find(params[:id])
        render json: food.to_json(include: {trip: {only: [:location, :country, :date, :image]}}, only:[:name, :price, :rating, :description] )
    end 

    def create
       food = Food.new(food_params)
       if food.save
        render json: foods.to_json(include: {trip: {only: [:location, :country, :date, :image]}}, only:[:name, :price, :rating, :description])
       else
        render json: {error: "Your food couldn't be added"}
    end 

    private

    def food_params
        params.require(:food).permit(:name, :price, :rating, :description)
    end 

end
