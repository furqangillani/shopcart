class Variant < ApplicationRecord

  belongs_to :product
  has_many :variant_colors, dependent: :destroy

end
