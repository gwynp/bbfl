class UsersController < ApplicationController
	before_action :authenticate_user!
  def index
  	@users11 = User.order(:division)
  end
end
