require_relative'board'
require_relative'print'
require_relative'rook'
require_relative'king'
require_relative'horse'
require_relative'bishop'
require_relative'queen'



move = Board.new

print = PrintBoard.new(move.board)

print.display
x = 0
while x != 100
	print "Enter X: "
	x = gets.chomp.to_i - 1

	print "Enter Y: "
	y = gets.chomp.to_i - 1

	print "Enter New X: "
	new_x = gets.chomp.to_i - 1

	print "Enter New Y: "
	new_y = gets.chomp.to_i - 1

	if move.move_check(x, y, new_x, new_y)
		puts "valid move"
	else
		puts "invalid move"
	end 

	print.display
end