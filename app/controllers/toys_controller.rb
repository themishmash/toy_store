class ToysController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  # before_action :set_user_toy, only: [:show]
  before_action :set_user_toy, only: [ :edit, :update, :destroy]

  def index
  @toys = Toy.all

  # @toys = current_user.toys
  end

  def show
    
    # @toy = Toy.all #don't want this as same name 
    @toy = Toy.find(params[:id]) #don't need this as in before action (set by private )

  end

  def edit
    @toy = Toy.find(params[:id])
  end

  def new
    @toy = Toy.new
  end

  def create #submit looks for create route
    # @toy = Toy.new(toy_params)
    @toy = current_user.toys.new( toy_params )

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
    params.require(:toy).permit(:name, :description, :date_posted, :user_id, :manufacturer_id, :picture)
  end

  def set_user_toy
    id = params[:id]
    @toy = current_user.toys.find_by_id( id )
 
    if @toy == nil
      redirect_to toys_path
    end 
  end 



end
