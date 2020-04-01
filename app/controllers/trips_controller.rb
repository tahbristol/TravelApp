class TripsController < ApplicationController
    def new
      @trip = Trip.new
    end
  
    def create
      @trip = Trip.create(trip_params.merge(user_id: current_user.id))
      if @trip.save
      redirect_to trip_path(@trip)
      else
      render :new    
      end
    end

    def index
      @trips = Trip.all
    end
  
    def edit
      set_trip
    end
  
    def show
      set_trip
    end

    def update
      set_trip
      @trip.update(trip_params)
      redirect_to trip_path(@trip)    
    end
          
  private
  
  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date, :user_id)
  end
end

