class ClothesController < ApplicationController
  def catalog
    @clothes=Cloth.all
  end
end
