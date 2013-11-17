class KeepersController < ApplicationController
  before_action :set_keeper, only: [:show, :edit, :update, :destroy]

  
  def index
    @keepers = Keeper.all
  end

 
  def show
  end

  
  def new
    @keeper = Keeper.new
    @keeper.year = 2013
  end

  
  def edit
  end

 
  def create
    @keeper = Keeper.new(keeper_params)
      if @keeper.save
        redirect_to @keeper, notice: 'Keeper was successfully created.' 
      else
        render action: 'new'
    end
 

 
  def update
      if @keeper.update(keeper_params)
        redirect_to @keeper, notice: 'Keeper was successfully updated.' 
      else
        render action: 'edit'
      end
  end
  
  def destroy
    @keeper.destroy
    redirect_to keepers_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keeper
      @keeper = Keeper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keeper_params
      params.require(:keeper).permit(:first, :last, :team, :year, :keeper_year)
    end
end
