class ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: [:show, :edit, :update, :destroy] #don't need .find(params[:id])
  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.all

  end

  def edit

  end

  def new
    @manufacturer = Manufacturer.new
  end 

  def create
    @manufacturer = Manufacturer.create(manuf_params)

    if @manufacturer.save
      redirect_to @manufacturer, notice: 'Manufacturer successfully added'
    else
      render 'new'
    end 
  end 

  def update
    if @manufacturer.update(manuf_params)
      redirect_to @manufacturer, notice: 'Manufacturer successfully updated'
    else
      render 'edit'
    end 
  end 

  def destroy
    @manufacturer.destroy
    redirect_to root_path, notice: 'Manufacturer successfully deleted'
  end
end


private 
def set_manufacturer
  @manufacturer = Manufacturer.find(params[:id])
end 

def manuf_params
  params.require(:manufacturer).permit(:name, :location)
end 