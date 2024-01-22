class ProductsController < ApplicationController
  before_action :set_photo, only: %i[show edit update destroy]
  def index
    @product = Product.where(category: 0)
  end

  def spaghetti
    @product = Product.where(category: 1)
  end
  def pizza
    @product = Product.where(category: 2)
  end
  def water
    @product = Product.where(category: 3)
  end
  def combo
    @product = Product.where(category: 4)
  end

  def edit
  end
  def new
    @product = Product.new()
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path
    else
      render "new"
    end
  end
  def update
    if Product.find(params[:id]).update
      redirect_to admin_products_path
    else
      render :edit
    end
  end
  
  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:category, :name, :description, :size, :price_prodcut, :image_product)
  end
end
