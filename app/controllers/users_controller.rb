class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @body_makes = current_user.body_makes
    @meal_records = current_user.meal_records
    #@body_makes = BodyMakes.where(user_id: [User.follows.ids])
  end

  def edit
  end

  def update
  end

  def search
    @search_friends = User.others(current_user).search(params[:keyword])
  end


  private 

  def user_params 
    params.require(:user).permit(
      :name,
      :profile,
      :age,
      :height,
      :weight,
      :body_fat_percentage
    )
  end
end
