class StorsController < ApplicationController
  def index
    @stor = Store.get_stores
  end

  def show
    @details = Store.find(params[:id])
  end

  def details
    @details = Store.find(params[:id])
    @sales = @details.get_sales

  end

  def sales

  end

  def products
    @details = Store.find(params[:id])
    @products = @details.get_products
  end
end
