class Board
	attr_accessor(:board)
	def initialize
		@board = [[nil, nil, nil, nil, nil, nil, nil, Rook.new],
				 [nil, nil, nil, nil, nil, nil, nil, nil],
				 [nil, nil, nil, nil, nil, nil, nil, nil],
				 [nil, nil, nil, nil, nil, nil, nil, nil],
				 [nil, nil, nil, nil, nil, nil, nil, nil],
				 [nil, nil, nil, nil, nil, nil, nil, nil],
				 [nil, nil, nil, nil, nil, nil, nil, nil],
				 [Rook.new, nil, nil, nil, nil, nil, nil, nil]]
	end
	def move_check(x, y, new_x, new_y)
		if @board[x][y].nil?
			print "no piece"
			return false
		else
			if(new_x < 9 && new_y < 9) && !(x == new_x && y == new_y)
			#is it in the bound of board && its not same place 
				if @board[x][y].move(x, y, new_x, new_y)
					@board[new_x][new_y] = @board[x][y]
					@board[x][y] = nil
					return true
				else
					print "no move available"
					return false
				end 
			else
				print "out of bounds"
				return false
			end 
		end 
	end
end

class Rook
	def move(x, y, new_x, new_y)
		if (x == new_x || y == new_y)
			return true
		else
			return false
		end
	end
end

move = Board.new

print "Enter X: "
x = gets.chomp.to_i

print "Enter Y: "
y = gets.chomp.to_i

print "Enter New X: "
new_x = gets.chomp.to_i

print "Enter New Y: "
new_y = gets.chomp.to_i

if move.move_check(x, y, new_x, new_y)
	puts "valid move"
else
	puts "invalid move"
end 
