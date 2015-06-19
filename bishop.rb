require_relative'piece'

class Bishop < Piece
	def move(x, y, new_x, new_y)
		dx = (x - new_x).to_f
		dy = (y - new_y).to_f

		if (dx/dy == 1 || dx/dy == -1)
			return true
		else
			return false
		end
	end
	def to_s
		return "| B |"
	end
end