class StoresController < ApplicationController
  def index
    @stores = Store.all
  end
  
  def new
    @store = Store.new
  end

  def create
    store = Store.create(store_params)
    store.save
    redirect_to stores_path
  end

  def edit
    set_store
  end

  def update
    set_store
    @store.update(store_params)
  end

  def destroy
    Store.find(params[:id]).destroy
  end

  def set_store
    @store = Store.find(params[:id])
  end

  def store_params
    data = params.require(:store).permit(:name, :priority, :repair_products)
  end
end
