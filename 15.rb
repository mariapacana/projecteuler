def make_grid(size)
	@grid = Array.new
	x = 1
	while x < 10
     y = 1
     @mew = Array.new
     while y < 10
        @mew << Square.new(0, 0, 0, 0, 0)
     y = y+1
     end
     @pawnboard << @mew
  x = x+1
end
