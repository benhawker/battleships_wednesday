class Ship
	DEFAULT_LENGTH = 2
	
	attr_reader :length

	def initialize(length = DEFAULT_LENGTH)
		fail 'Length must be between 2 and 5' unless length > 1 && length < 6
		@length = length
	end

end