class WeightsController < ApplicationController
  def index
    @weight = Weight.all
    @user = current_user
  end

  def create
    user = current_user
    weight = Weight.new(weight_params)
    weight.user_id = user.id
    weight.save
    redirect_to root_path
  end

  def show
    @weight = Weight.find_by_id(params[:id])
  end

  def new
    @weight = Weight.new
  end

  def edit
    @weight = Weight.find(params[:id])
  end

  def update
    @weight = Weight.find(params[:id])
    @weight.update(weight_params)
    redirect_to root_path
  end

  def destroy
    @weight = Weight.find(params[:id])
    @weight.destroy
    redirect_to root_path
  end

  private
  def weight_params
    params.require(:weight).permit(:pounds, :user_id, :pic)
  end
end
