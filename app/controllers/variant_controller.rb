class VariantController < ApplicationController
  before_action :set_variant, only: [ :show, :edit, :update, :destroy ]

  def index
    @variants = Variation.all
  end

  def show
  end

  def new
    @variant = Variant.new
  end

  def edit
  end

  def create
    @variant = Variant.new(variant_params)
      if @variant.save
        redirect_to variant_path(@ariant), notice: "Variation was successfully created."
      else
        render 'new'
      end
  end

  def update
      if @variant.update(variant_params)
        redirect_to variant_path(@variant), notice: "Variation was successfully updated."
      else
        render 'edit'
      end
  end

  def destroy
    @variant.destroy

      redirect_to variant_path, notice: "Variation was successfully destroyed."
  end

  private

  def set_variant
    @variant = Variant.find(params[:id])
  end

  def variant_params
    params.require(:variant).permit(:stock, :size, :price)
  end

end
