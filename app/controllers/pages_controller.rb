class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @rents = Rent.where(user_id: @user.id)
  end

  def random
    @users = User.all
    @markers = @users.geocoded.map do |user| {
      lat: user.latitude,
      lng: user.longitude,
      # infoWindow: render_to_string(partial: "info_window", locals: { flat: flat })
      # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
    }
    end
  end
end
