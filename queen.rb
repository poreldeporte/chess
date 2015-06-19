require_relative'piece'

class Queen < Piece
	def move(x, y, new_x, new_y)
		if (x == new_x || y == new_y) || (dx/dy == 1 || dx/dy == -1)
			return true
		else
			return false
		end
	end
	def to_s
		return "| Q |"
	end
end