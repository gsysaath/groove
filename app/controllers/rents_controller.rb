class RentsController < ApplicationController
  before_action :set_vinyl, only: %i[new create]

  def new
    @rent = Rent.new
    authorize @rent
  end

  def create
    @rent = Rent.new(params_rent)
    authorize @rent
    if @rent.end_date && @rent.start_date
      number_of_days = (@rent.end_date - @rent.start_date).fdiv(86400).to_i + 1
      @rent.price = '%.2f' % (@vinyl.price_per_day * number_of_days)
      @rent.user = current_user
      @rent.vinyl = @vinyl
      @rent.status = "pending approval"
      authorize @rent
      if @rent.save
        flash[:notice] = "Your rental is confirmed!"
        redirect_to dashboard_path
      end
    else
      redirect_to vinyl_path(@vinyl)
    end
  end

  private

  def set_vinyl
    @vinyl = Vinyl.find(params[:vinyl_id])
  end

  def params_rent
    params.require(:rent).permit(:start_date, :end_date, :vinyl_id)
  end
end
