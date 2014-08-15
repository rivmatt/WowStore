class Trend < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  def self.get_trends
  	order("product_id ASC")
  end

end
