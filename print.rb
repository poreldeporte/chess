class PrintBoard
	attr_accessor(:board)
	def initialize(board)
		@board = board
	end 
	def display
		print "Y 1  "
		print "  2  "
		print "  3  "
		print "  4  "
		print "  5  "
		print "  6  "
		print "  7  "
		puts "  8 | X"

		print @board[0][0]
		print @board[0][1]
		print @board[0][2]
		print @board[0][3]
		print @board[0][4]
		print @board[0][5]
		print @board[0][6]
		print @board[0][7]
		puts " 1"

		print @board[1][0]
		print @board[1][1]
		print @board[1][2]
		print @board[1][3]
		print @board[1][4]
		print @board[1][5]
		print @board[1][6]
		print @board[1][7]
		puts " 2"

		print @board[2][0]
		print @board[2][1]
		print @board[2][2]
		print @board[2][3]
		print @board[2][4]
		print @board[2][5]
		print @board[2][6]
		print @board[2][7]
		puts " 3"

		print @board[3][0]
		print @board[3][1]
		print @board[3][2]
		print @board[3][3]
		print @board[3][4]
		print @board[3][5]
		print @board[3][6]
		print @board[3][7]
		puts " 4"

		print @board[4][0]
		print @board[4][1]
		print @board[4][2]
		print @board[4][3]
		print @board[4][4]
		print @board[4][5]
		print @board[4][6]
		print @board[4][7]
		puts " 5"

		print @board[5][0]
		print @board[5][1]
		print @board[5][2]
		print @board[5][3]
		print @board[5][4]
		print @board[5][5]
		print @board[5][6]
		print @board[5][7]	
		puts " 6"

		print @board[6][0]
		print @board[6][1]
		print @board[6][2]
		print @board[6][3]
		print @board[6][4]
		print @board[6][5]
		print @board[6][6]
		print @board[6][7]	
		puts " 7"

		print @board[7][0]
		print @board[7][1]
		print @board[7][2]
		print @board[7][3]
		print @board[7][4]
		print @board[7][5]
		print @board[7][6]
		print @board[7][7]
		puts " 8"
	end 
end
