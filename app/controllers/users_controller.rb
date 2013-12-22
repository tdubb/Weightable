class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def update
  end

  def create

  end

  def destroy
  end

  def edit
  end

  def show
    @user = current_user
    @weight = Weight.new(pounds:@weight.to_i, user_id:@user.id)
  end

  def index
    @user = current_user
  end

  private
  def user_params
    params.require(:email).permit(:weight_id)
  end
end  