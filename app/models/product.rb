class Product < ApplicationRecord

  belongs_to :sub_category
  has_many :variants, dependent: :destroy

end
