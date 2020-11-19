class VinylsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_vinyl, only: %i[show edit update destroy]
  require 'open-uri'
  require 'json'

  def index
    if search_params
      @vinyls = policy_scope(Vinyl).global_search(search_params[:query])
    else
      @vinyls = policy_scope(Vinyl)
    end
  end

  def show
    @vinyl = Vinyl.find(params[:id])
    authorize @vinyl
    artist = @vinyl.artist
    album = @vinyl.name

    search = "#{artist} #{album}"
    search = search.gsub(" ","%20")

    url = "http://youtube-scrape.herokuapp.com/api/search?q=#{search}"
    parse = JSON.parse(open(url).read)
    i = 0;
    id = 0
    while id == 0
      if parse["results"][i]["video"]
        id = parse["results"][i]["video"]["id"]
      end
      i += 1;
    end
    @vinyl.image_url = id
    @user_id = @vinyl.user_id
    @user = User.find(@user_id)
    @markers = [{ lat: @user.latitude, lng: @user.longitude }]

    @rent = Rent.new
  end

  def new
    @vinyl = Vinyl.new
    authorize @vinyl
  end

  def create
    @vinyl = Vinyl.new(vinyl_params)
    @user = current_user
    @vinyl.user = @user
    @vinyl.year = nil if @vinyl.year.nil?
    @vinyl.genre = "Unknown" if @vinyl.genre == ""
    @vinyl.label = "Unknown" if @vinyl.label == ""
    authorize @vinyl
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
    params.require(:vinyl).permit(:name, :year,
      :user_id,
      :artist, :genre,
      :label, :quality,
      :dimension, :price_per_day,
      :available, :photo, :image_url)
  end

  def search_params
    if params[:search].present?
      params.require(:search).permit(:query)
    else
      false
    end
  end
end
