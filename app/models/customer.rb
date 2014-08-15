class Customer < ActiveRecord::Base
	has_many :sales
	has_many :trends

	def self.get_customers
		order("name ASC")
	end

	def get_sales 
		sales.order("id DESC")
	end
end
