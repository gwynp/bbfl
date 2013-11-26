class UsersController < ApplicationController
  def index
  	@users11 = User.order(:division)
  end
end
