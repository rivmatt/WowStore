class Trend < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  def self.get_trends
  	#
  end

end
