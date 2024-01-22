class Admin::ProductsController < ApplicationController
  def edit
    @dashboard_admin_product = Product.find(params[:id])
  end

  def index
    @dashboard_admin_products = Product.all
  end
  def edit
  end
  def new
    @dashboard_admin_products = Product.new
  end

  def create
    @dashboard_admin_products = Product.new(product_params)
    if @dashboard_admin_products.save
      redirect_to admin_products_path
    else
      render 'new'
    end
  end

  def update
    # @dashboard_admin_products = Product.find(params[:id])
    # if @dashboard_admin_products.update(product_params)
    #   redirect_to admin_products_path
    # else
    #   render :edit
    # end
    # if @dashboard_admin_products.update(product_params)
    #   redirect_to admin_products_path
    # else
    #   render :edit
    # end
    if Product.find(params[:id]).update
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to admin_products_path if current_user.admin?
  end

  private

  def set_product
    @dashboard_admin_product = Product.find(params[:id])
  end

  def product_params
    params.require(:dashboard_admin_product).permit(:category, :name, :description, :size, :price_prodcut,
                                                    :image_product)
  end
end
