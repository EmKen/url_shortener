class Url < ApplicationRecord
	before_create do
		self.short_url = shorten
	end
	validates :long_url, format: { with: /https://.+/, message: "Url must begin with https://"}
	def shorter
		(('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a).sample(rand(2)+6).join
	end

	def shorten
		short = shorter
		while Url.exists?(:short_url => short)
			short = shorter
		end
		short
	end
end
