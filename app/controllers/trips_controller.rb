class TripsController < ApplicationController

    def index 
        trips = Trip.all 
        render json: trips.to_json(include: {food: {only: [:name, :price, :rating, :description]}}, only: [:location, :country, :date, :image])
    end 

    def show 
        trip = Trip.find(params[:id])
        render json: trip.to_json(include: {food: {only: [:name, :price, :rating, :description]}}, only: [:location, :country, :date, :image])
    end 
end
