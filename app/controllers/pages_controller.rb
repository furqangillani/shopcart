class PagesController < ApplicationController
  def index
    @product = Product.all
    @category = Category.all
  end

  def show
    @subcategory = SubCategory.all
  end
end
