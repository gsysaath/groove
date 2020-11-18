class PagesController < ApplicationController
  def home
  end

  def dashboard
    @user = current_user
    @rents = Rent.where(user_id: @user.id)
  end

  def random
  end
end
