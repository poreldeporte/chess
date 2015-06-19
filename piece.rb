class Piece
	attr_accessor(:color)
	def initialize(color)
		@color = color
	end 
	def enemy_check(stranger)
		if (stranger.color == :white && @color == :black) || (stranger.color == :black && @color == :white)
			return true
		else
			return false
		end
	end 
end