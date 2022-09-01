class PagesController < ApplicationController
  def index
    @product = Product.all
    @category = Category.all
  end
end
