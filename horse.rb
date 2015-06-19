require_relative'piece'

class Horse < Piece
	def move(x, y, new_x, new_y)
		dx = x - new_x
		dy = y - new_y

		if (dx == 2 || dx == -2)
			if (dy == 1 || dy == -1)
				return true
			end
		else
			return false
		end
	end
	def to_s
		return "| H |"
	end

end