class TrendController < ApplicationController
	def index
		@product = Product.find(params[:id])

		@visitas = @product.get_total_trends

		@products = Product.all

		#@hhh = Trend.find(params[:id])
		#@visitas = @hhh.get_trends
	end

  def show
  end
end
