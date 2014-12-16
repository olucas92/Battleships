require_relative 'ship'

class PatrolBoat

    include Ship

	def initialize
		@size = 2
    @health = 2
	end

end