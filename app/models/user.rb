class User < ApplicationRecord
  has_secure_password
  before_validation :generate_promocode, on: :create
  validates :name, :promo_code, presence: true

	def generate_promocode
  		promo_code = ""
		base_value = 65;
		for i in 1..3 
	  		pw = (base_value + rand(26).to_i).chr
		  	promo_code << pw 
		end
		
		promo_code << 5.times do rand(10)

		self.promo_code = promo_code
  	end

end
