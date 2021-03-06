class WeightsController < ApplicationController
  def index
    @weight = Weight.all
    @user = current_user
  end

  def create
    user = current_user
    lastweight = user.weights.last
    if user.weights.empty? || lastweight.date != Date.today
      weight = Weight.new(params[weight_params])
      weight.user_id = user.id
      weight.pounds = params[:weight][:pounds]
      weight.pic = params[:weight][:pic]
      weight.goal = user.goal
      weight.deadline = user.deadline
      weight.save
      user.weight_id = weight.id
      user.save
    else
      lastweight.pounds = params[:weight][:pounds]
      lastweight.goal = user.goal
      lastweight.deadline = user.deadline

      if params[:weight][:pic].present?
        lastweight.pic = params[:weight][:pic]
        lastweight.save
      else
        lastweight.save
      end
    end
    redirect_to root_path
  end

  def show
    @weight = Weight.find_by_id(params[:id])
    @user = current_user
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
