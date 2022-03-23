class BodyMakesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show ] 
  before_action :set_body_make, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]


  def index
    @body_makes = BodyMake.includes(:user).order("created_at DESC")
    @body_make = BodyMake.new
  end

  def new
    @body_make = BodyMake.new
  end

  def create
    @body_make = BodyMake.new(body_make_params)
    @body_make.start_time = Date.current
    if @body_make.save
      redirect_to body_makes_path
    else
      render :new
    end
  end

  def show
    @body_make = BodyMake.find(params[:id])

  end

  def destroy
    body_make = BodyMake.find(params[:id])
    body_make.destroy
  end

  private

  def body_make_params
    params.require(:body_make).permit(:text, :weight, :image, :start_time).merge(user_id: current_user.id )
  end

  def set_body_make
    @body_makes = BodyMake.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end

