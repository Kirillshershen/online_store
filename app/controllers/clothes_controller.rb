class ClothesController < ApplicationController
  def catalog
    @cloth_types = ClothType.all

    if params[:cloth_type_id].present?
      @cloth_type = ClothType.find(params[:cloth_type_id])
      @clothes = Cloth.where(cloth_type_id: @cloth_type.id)
      @show_catalog = true
    else
      @clothes = []
      @show_catalog = false
    end
  end
  
  def show
    @cloth = Cloth.find(params[:id])
    @sizes = @cloth.cloth_type.sizes

    @clothes = Cloth.where(cloth_type_id: @cloth.cloth_type_id)
  rescue ActiveRecord::RecordNotFound
    redirect_to clothes_catalog_path, alert: "Товар не найден"
  end
end
