class ProductsController < ApplicationController

  def index
    if client_signed_in?
      @products = Product.where(client_id: current_client.id)
    elsif admin_signed_in?
      @products = Product.all
    else
      redirect_to '/home'
    end
  end

  def new
    if client_signed_in?
      @product = Product.new
    else
      redirect_to '/home'
    end
  end

  def create
    if client_signed_in?
      store_id = Product.assign_store(product_params[:name])
      @product = Product.create(
        name: product_params[:name],
        repair_status: 'pending',
        client_id: current_client.id,
        store_id: store_id
      )
      RepairJob.set(wait: 1.minute).perform_later(@product)
      redirect_to products_path
    end
  end

  def edit
    set_product
  end

  def update
    set_product
    @product.update(product_params)
    redirect_to products_path
  end

  def destroy
    Product.find(params[:id]).destroy
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name,:repair_price,:repair_status, :client_id,:store_id)
  end
end
