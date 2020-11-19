class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @rents = Rent.where(user_id: @user.id)
  end

  def random
  end

end
