class ReservesController < ApplicationController
  def index
    @reserves = Reserve.all
  end

  def confirm
    @reserve = Reserve.new(params.permit(:start_date, :end_date, :headcount, :reserve_price, :subscribe_id, :user_id))
    @subscribe = Subscribe.find(params[:subscribe_id])
    @days = (@reserve.end_date.to_date - @reserve.start_date.to_date).to_i
    @price = @days * @subscribe.price * @reserve.headcount

    return if @reserve.valid?
    flash[:alert] = "過去の日付は無効です"
    redirect_back(fallback_location: subscribe_path(:id))
  end

  def create
    @reserve =  Reserve.new(params.require(:reserve).permit(:start_date, :end_date, :reserve_price, :headcount, :subscribe_id, :user_id))
    @subscribe = Subscribe.find(params[:reserve][:subscribe_id])
    if @reserve.save
      flash[:notice] = "Reservation was suvvscfully created."
      redirect_to @reserve
    else
      render "confirm"
    end
  end

  def show
    @reserve = Reserve.find(params[:id])
    @subscribe = @reserve.subscribe
  end

end
