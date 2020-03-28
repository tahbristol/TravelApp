class DestinationsController < ApplicationController
    def new
      @destination = Destination.new
    end
  
    def index
      @destinations = Destination.all
    end
 
    def create
      @destination = Destination.create(destination_params.merge(user_id: current_user.id))
      if @destination.save
      redirect_to destination_path(@destination)
      else
        render :new    
      end
    end

      def edit
        set_destination
      end
    
      def show
        set_destination
      end
  
      def update
        set_destination
        @destination.update(destination_params)
        redirect_to destination_path(@destination)    
      end

    private
    
    def set_destination
      @destination = Destination.find(params[:id])
    end
  
    def destination_params
      params.require(:destination).permit(:name, :location, :description, :user_id) 
    end
  end