class VinylsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_vinyl, only: %i[show edit update destroy]

  def index
    @vinyls = policy_scope(Vinyl)
  end

  def show
  end

  def new
    @vinyl = Vinyl.new
  end

  def create
    @vinyl = Vinyl.new
    if @vinyl.save
      redirect_to vinyl_path(@vinyl)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @vinyl.update(vinyl_params)
      redirect_to vinyl_path(@vinyl)
    else
      render :edit
    end
  end

  def destroy
    @vinyl.destroy
    redirect_to vinyls_path
  end

  private

  def set_vinyl
    @vinyl = Vinyl.find(params[:id])
  end

  def vinyl_params
    params.require(:vinyl).permit(:name, :year, :user_id, :artist, :genre,
                                  :label, :quality, :dimension, :price_per_day,
                                  :available)
  end
end
