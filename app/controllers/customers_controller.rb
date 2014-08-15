class CustomersController < ApplicationController
  def index
  	@listado = Customer.get_customers
  end

  def show
  	@detalle = Customer.find(params[:id])

  end

  def details
  	@detalle = Customer.find(params[:id])
  	@compras = @detalle.get_sales
  end
end


# @customer = Customer.new

# def method_name
# 	return "hi"
# end

# @customer.method_name