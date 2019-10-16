class ToysController < ApplicationController
  

  def index
   @toys = Toy.all
  end

  def show
    @toy = Toy.all
    @toy = Toy.find(params[:id])

  end

  def edit
    @toy = Toy.find(params[:id])
  end

  def new
    @toy = Toy.new
  end

  def create #submit looks for create route
    @toy = Toy.create(toy_params)
    
  
    if @toy.save
    redirect_to root_path
    else 
      render 'new'
    end  
  end

  def update
    @toy = Toy.find(params[:id])
  
 
    if @toy.update(toy_params)
      redirect_to root_path
    else 
      render 'edit'
    end
  end 

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy
    redirect_to toys_path
  end 

  private
  def toy_params
    params.require(:toy).permit(:name, :description, :date_posted, :user)
  end
end
