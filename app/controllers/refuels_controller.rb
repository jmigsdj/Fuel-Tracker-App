class RefuelsController < ApplicationController
  def index
    @refuels = Refuel.all
  end
  
  def show
    @refuel = Refuel.find(params[:id])
  end
  
  def new
    @refuel = Refuel.new
  end
  
  def edit
    @refuel = Refuel.find(params[:id])
  end
  
  def create
    @refuel = Refuel.new(refuel_params)
    
    if @refuel.save
      redirect_to @refuel
    else
      render 'new' 
    end
  end

  def update
    @refuel = Refuel.find(params[:id])

    if @refuel.update(refuel_params)
      redirect_to @refuel
    else
      render 'edit'      
    end
  end

  def destroy
    @refuel = Refuel.find(params[:id])
    @refuel.destroy

    redirect_to refuels_path
  end

  private
    def refuel_params
      params.require(:refuel).permit(
        :date, 
        :driver, 
        :vehicle, 
        :odometer_reading, 
        :refuel_location, 
        :fuel_litters)
    end

end
