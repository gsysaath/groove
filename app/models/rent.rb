class Rent < ApplicationRecord
  belongs_to :vinyl
  belongs_to :user

  validates :start_date, presence: true #, if: :start_is_possible?
  validates :end_date, presence: true, if: :rental_is_possible?

  STATUS = ["pending approval", "rental to come", "currently renting", "previous rental", "canceled rental" ].freeze
  validates :status, inclusion: { in: STATUS }

  def rental_is_possible?
    if start_date >= end_date
      errors.add(:end_date, ' must exist after the rental start day')
      false
    end
  end

  # def start_is_possible?
  #   if start_date < Date.today
  #     errors.add(:start_date, " must be equal or superior to today's date")
  #     false
  #   end
  # end
end
