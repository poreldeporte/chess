require_relative'piece'

class King < Piece
	def move(x, y, new_x, new_y)
		if ((-1..1).include?(x - new_x) && (-1..1).include?(y - new_y))
			return true
		else
			return false
		end
	end
	def to_s
		return "| K |"
	end
end
