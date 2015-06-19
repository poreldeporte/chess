require_relative'piece'

class Rook < Piece
	def move(x, y, new_x, new_y)
		if (x == new_x || y == new_y)
			return true
		else
			return false
		end
	end
	def to_s
		return "| R |"
	end
end