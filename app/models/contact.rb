require_relative '../../db/config'

# implement your Contact model here
class Contact
	validates :email, :format => 
		{ :with => /\w+@\w+\.\w{2,}/ }

	validates :phone, :format => 
		{ :with => /\d{3}\D\d{3}\D\d{4}/ }

	validates :company, :presence => true


	def name
		first_name + " " + last_name
	end

	def area_code
		phone.slice(0..2)
	end
end