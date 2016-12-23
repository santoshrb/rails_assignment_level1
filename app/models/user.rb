class User < ApplicationRecord
  has_secure_password
  before_validation :generate_promocode, on: :create
  validates :name, :promo_code, presence: true

  def generate_promocode
  	promo_code = []
	base_value = 65;
	for i in 1..3 
	  pw = (base_value + rand(26).to_i).chr
	  promo_code << pw
	end
	promo_code = promo_code.flatten.join''

	begin
	  random_number= rand(1000).to_i * rand(1000).to_i * rand(1000).to_i
	end while random_number < 1000
	
	random_number = random_number.to_s
	index = random_number.length
	integer_part = []
	for i in 1..4
	  integer_part << random_number[rand(index)]
	end
	integer_part = integer_part.flatten.join''
	promo_code = promo_code+integer_part

	self.promo_code = promo_code
  end

end
