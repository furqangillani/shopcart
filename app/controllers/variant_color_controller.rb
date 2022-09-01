class VariantColorsController < ApplicationController
  before_action :set_variant_color, only: [ :show, :edit, :update, :destroy ]

  # GET /variation_colors or /variation_colors.json
  def index
    @variant_colors = VariantColor.all
  end

  # GET /variation_colors/1 or /variation_colors/1.json
  def show
  end

  # GET /variation_colors/new
  def new
    @variant_color = VariantColor.new
  end

  # GET /variation_colors/1/edit
  def edit
  end

  # POST /variation_colors or /variation_colors.json
  def create
    @variant_color = VariantColor.new(variant_color_params)

      if @variant_color.save
        redirect_to variant_color_path(@variant_color), notice: "Variation color was successfully created."
      else
        render 'new'
      end
    end

  # PATCH/PUT /variation_colors/1 or /variation_colors/1.json
  def update
      if @variant_color.update(variant_color_params)
        redirect_to variant_color_path(@variant_color), notice: "Variation color was successfully updated."
      else
        render 'edit'
      end
    end

  # DELETE /variation_colors/1 or /variation_colors/1.json
  def destroy
    @variant_color.destroy
      redirect_to variant_colors_path, notice: "Variation color was successfully destroyed."
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_variant_color
    @variant_color = VariantColor.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def variant_color_params
    params.require(:variant_color).permit(:name)
  end
end
