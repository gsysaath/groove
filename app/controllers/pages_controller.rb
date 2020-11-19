class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @rents = Rent.where(user_id: @user.id)
    @rents_pending = @rents.where(status: "pending approval")
    status_updating
    @rents_to_come = @rents.where(status: "rental to come")
    @rents_current = @rents.where(status: "currently renting")
    @rents_previous = @rents.where(status: "previous rental")
  end

  def random
  end

  private

  def status_updating
    @rents_to_come = @rents.where(status: "rental to come")
    today = Date.now
    @rents_to_come.each do |rent|
      if rent.

    end

  end

end
