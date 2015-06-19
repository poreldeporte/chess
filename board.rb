class Board
	attr_accessor(:board)
	def initialize
		@board = [[Rook.new(:black), Horse.new(:black), Bishop.new(:black), King.new(:black), Queen.new(:black), Bishop.new(:black), Horse.new(:black), Rook.new(:black)],
				 ["|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |"],
				 ["|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |"],
				 ["|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |"],
				 ["|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |"],
				 ["|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |"],
				 ["|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |", "|   |"],
				 [Rook.new(:white), Horse.new(:white), Bishop.new(:white), Queen.new(:white), King.new(:white), Bishop.new(:white), Horse.new(:white), Rook.new(:white)]]
	end
	
	def move_check(x, y, new_x, new_y)
		if @board[x][y] == "|   |"
			puts "No piece there"
			return false
		else
			if(new_x < 9 && new_y < 9) && (x < 9 && y < 9) && !(x == new_x && y == new_y) && (new_x >= 0 && new_y >= 0) && (x >= 0 && y >= 0)
			#is it in the bound of board && its not same place 
				if @board[x][y].move(x, y, new_x, new_y)
					if @board[x][y].enemy_check(@board[new_x][new_y])	
						@board[new_x][new_y] = @board[x][y]
						@board[x][y] = "|   |"
						return true
					else
						puts "You are on the same team"
						return false
					end 
				else
					puts "No move available"
					return false
				end 
			else
				puts "Out of bounds"
				return false
			end 
		end
	end
end