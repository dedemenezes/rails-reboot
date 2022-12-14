class FootballField < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :address, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
