class AccomodationsController < ApplicationController
    def new
      @accomodation = Accomodation.new
    end
  
    def create
        @accomodation = Accomodation.create(accomodation_params.merge(user_id: current_user.id))
        if @accomodation.save
        redirect_to accomodation_path(@accomodation)
        else
          render :new    
        end
    end

    def index
      @accomodations = Flight.all
    end
  
    def edit
      set_accomodation
    end
  
    def show
      set_accomodation
    end

    def update
      set_accomodation
      @accomodation.update(flight_params)
      redirect_to accomodation_path(@accomodation)    
    end
          
  private
  
  def set_accomodation
    @accomodation = Accomodation.find(params[:id])
  end

  def accomodation_params
    params.require(:accomodation).permit(:hotel, :location, :cost, :user_id)
  end
end