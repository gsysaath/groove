class Vinyl < ApplicationRecord
  belongs_to :user
  has_many :rents
  has_one_attached :photo
  validates :name, presence: true
  validates :artist, presence: true
  validates :quality, presence: true
  validates :dimension, presence: true
  validates :price_per_day, presence: true, numericality: true

    include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :artist ],
    using: {
      tsearch: { prefix: true }
    }

end