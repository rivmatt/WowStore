class Store < ActiveRecord::Base
	has_many :products
	has_many :sales, :through => :products

	def self.get_stores
		order("name ASC")
	end

	def get_products
		products.order("id DESC")
	end

	def get_sales
		sales.order("id DESC")
	end
end
