class Sales < ActiveRecord::Base
  belongs_to :customer
  belongs_to :product

	def self.get_sales
		order("id DESC")
	end
end
