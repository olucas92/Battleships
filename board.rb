class Board

  attr_accessor :places

  def places
    @places = {
      a1: " ", a2: " ", a3: " ",
      b1: " ", b2: " ", b3: " ",
      c1: " ", c2: " ", c3: " "
  }
  end

  # @places["a1"] = "x"

  def draw
    puts "   a b c"
    puts ""
    puts " 1 #{@places[:a1]}|#{@places[:b1]}|#{@places[:c1]}"
    puts "   -----"
    puts " 2 #{@places[:a2]}|#{@places[:b2]}|#{@places[:c2]}"
    puts "   -----"
    puts " 3 #{@places[:a3]}|#{@places[:b3]}|#{@places[:c3]}"
  end

end
