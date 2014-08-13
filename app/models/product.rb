class Product < ActiveRecord::Base
  	belongs_to :store
  	has_many :sales

	def self.get_products
		order("name ASC")
	end

	def get_sales
		sales.order("id DESC")
	end
end
