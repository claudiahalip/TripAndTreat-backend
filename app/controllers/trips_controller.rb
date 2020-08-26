class TripsController < ApplicationController

    def index 
        trips = Trip.all 
        render json: trips.to_json(include: {food: {only: [:id, :name, :price, :rating, :description]}}, only: [:id, :location, :country, :date, :image])
    end 

    def show 
        trip = Trip.find(params[:id])
        render json: trip.to_json(include: {food: {only: [:id, :name, :price, :rating, :description]}}, only: [:id, :location, :country, :date, :image])
    end 

    def creare
        trip.Trip.new(trip_params)
        if trip.save
            render json: trips.to_json(include: {food: {only: [:id, :name, :price, :rating, :description]}}, only: [:id, :location, :country, :date, :image])
        else 
            render json: {error: "Your trip couldn't be added!"}
    end

    private 

    def trip_params
        params.require(:trip).permit(:location, :country, :date, :image) 
    end 
end
