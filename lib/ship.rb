class Ship

  def initialize
    health
  end

	def size
		@size = 1
	end

  def health
    @size
  end

  def floating?
    @floating
  end


  def floating
    @floating = true
  end

  def sink!
    @floating = false
  end

end