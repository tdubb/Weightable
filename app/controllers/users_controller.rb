class UsersController < ApplicationController
  def landing
    redirect_to users_show_path(current_user)
  end
  def new
  end

  def update
    @user = current_user
    @user.deadline = params[:user][:deadline]
    @user.goal = params[:user][:goal]
    @user.save
    redirect_to root_path
  end

  def create

  end

   def destroy
    current_user.goal = ""
    current_user.deadline = ""
    current_user.save
    redirect_to root_path
  end

  def edit
  end

  def show
    @user = current_user
    @weight = Weight.new(pounds:@weight.to_i, user_id:@user.id)
  end

  def index
  end

  def friends
    @user = User.find_by_email(params[:email])
  end

  private
  def user_params
    params.require(:email).permit(:weight_id, :deadline, :goal, :profile_pic)
  end
end  