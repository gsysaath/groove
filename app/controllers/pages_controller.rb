class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @rents = Rent.where(user_id: @user.id)
    @rents_pending = @rents.where(status: "pending approval")
    status_updating(@rents)
    @rents_to_come = @rents.where(status: "rental to come")
    @rents_current = @rents.where(status: "currently renting")
    @rents_previous = @rents.where(status: "previous rental")
  end

  def owner
    @user = current_user
    @vinyls = Vinyl.all
    @owned_vinyls = []
    @vinyls.each do |vinyl|
      @owned_vinyls << vinyl if vinyl.user_id == @user.id
    end

    @my_rentings = []
    @owned_vinyls.each do |vinyl|
      @my_rentings << Rent.where(vinyl_id: vinyl.id)
    end

    # @my_rentings = Rent.where(vinyl_id.user == @user)
    # @owned_vinyls.each do |vinyl|
    #   @my_rentings << vinyl.id @rents.vinyl_id
    # end

    @rents_pending = []
    @my_rentings.each do |rent|
      @rents_pending << rent if rent.status == "pending approval"
    end
    # status_updating(@my_rentings)
    # @rents_to_come = @my_rentings.where(status: "rental to come")
    # @rents_current = @my_rentings.where(status: "currently renting")
    # @rents_previous = @my_rentings.where(status: "previous rental")
  end

  def random
  end

  private

  def rents_to_come
    return @rents.where(status: "rental to come").or(@rents.where(status: ""))
  end

  def status_updating(element)
    today = Date.new
    @rents_to_come = element.where(status: "rental to come")
    @rents_to_come.each do |rent|
      if rent.start_date <= today && rent.end_date >= today
        rent.status = "currently renting"
      elsif rent.end_date < today
        rent.status = "previous rental"
      end
    end

    @rents_current = element.where(status: "currently renting")
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
