class Product < ActiveRecord::Base
  	belongs_to :store
  	has_many :sales
  	has_many :trends

	def self.get_products
		order("name ASC")
	end

	def get_sales
		sales.order("id DESC")
	end

	def get_trends
		trends.order('id ASC')
	end

	def get_total_trends
		trends.count
	end
end
