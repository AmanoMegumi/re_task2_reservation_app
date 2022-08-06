class SubscribesController < ApplicationController
  def new
    @subscribe = Subscribe.new
  end

  def create
    @subscribe = Subscribe.new(params.require(:subscribe).permit(:roomname, :explanation, :price, :address, :roomphoto))
    @subscribe.user_id = current_user.id
    if @subscribe.save
      redirect_to subscribe_path(@subscribe.id)
    else
      render :new
    end
  end

  def index
    @subscribes = Subscribe.all
  end

  def show
    @subscribe = Subscribe.find(params[:id])
  end

  private
  def subscribe_params
    params.require(:subscribe).permit(:roomphoto)
  end
end
