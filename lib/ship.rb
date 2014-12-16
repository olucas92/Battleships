module Ship

	def size
	end

	def full_health
		@health == @size
	end

	def sunk
		@health == 0
	end
	
end