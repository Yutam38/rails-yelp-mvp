class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w[chinese Chinese italian Italian japanese Japanese french French belgian Belgian] }
end
