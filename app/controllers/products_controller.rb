class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
  def create
    product = product.create(product_params)
    product.save
  end
  def edit
    set_product
  end
  def update
    set_product
    @product.update(product_params)
  end
  def destroy
    Product.find(params[:id]).destroy
  end
  def set_product
    @product = Product.find(params[:id])
  end
  def product_params
    data = params.require(:product).permit(:name, :repair_price)
  end
end
