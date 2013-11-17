class KeepersController < ApplicationController
  before_action :set_keeper, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def index
    @keepers = Keeper.all
  end

  def alomar
    #@keepers = Keeper.all
    @keepers = Keeper.where(team: 'PHI')
  end

  def show

  end 

  def new
    @keeper = current_user.keepers.build
  end

  def edit
  end

 
  def create
    @keeper = current_user.keepers.build(keeper_params)
      if @keeper.save
        redirect_to keepers_url, notice: 'Keeper was successfully created.' 
      else
        render action: 'new'
    end
  end
 
  def update
      if @keeper.update(keeper_params)
        redirect_to keepers_url, notice: 'Keeper was successfully updated.' 
      else
        render action: 'edit'
      end
  end
  
  def destroy
    @keeper.destroy
    redirect_to keepers_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keeper
      @keeper = Keeper.find(params[:id])
    end

    def correct_user
      @keeper = current_user.keepers.find(params[:id])
      redirect_to keepers_path if @keeper.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keeper_params
      params.require(:keeper).permit(:first, :last, :team, :year, :keeper_year)
    end
end
