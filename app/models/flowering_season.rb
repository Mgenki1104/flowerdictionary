class FloweringSeason < ApplicationRecord
  has_many :bouquets, dependent: :destroy
end
