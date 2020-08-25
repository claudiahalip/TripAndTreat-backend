class FoodsController < ApplicationController

    def index 
        foods = Food.all
        render json: foods.to_json(include: {trip: {only: [:location, :country, :date, :image]}}, only:[:name, :price, :rating, :description] )
    end 

    def show 
        food = Food.find(params[:id])
        render json: food.to_json(include: {trip: {only: [:location, :country, :date, :image]}}, only:[:name, :price, :rating, :description] )
    end 

end
