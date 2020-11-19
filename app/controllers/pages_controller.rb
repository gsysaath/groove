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

  def rents_to_come
    return @rents.where(status: "rental to come").or(@rents.where(status: ""))
  end

  def status_updating
    today = Date.new
    @rents_to_come = @rents.where(status: "rental to come")
    @rents_to_come.each do |rent|
      if rent.start_date <= today && rent.end_date >= today
        rent.status = "currently renting"
      elsif rent.end_date < today
        rent.status = "previous rental"
      end
    end

    @rents_current = @rents.where(status: "currently renting")
    @rents_current.each do |rent|
      if rent.start_date <= today && rent.end_date >= today
        rent.status = "currently renting"
      elsif rent.end_date < today
        rent.status = "previous rental"
      end
    end
    # @rents_to_come = rents_array.where(status: "rental to come")
  end
end
