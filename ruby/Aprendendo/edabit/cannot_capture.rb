def cannot_capture(board)
	for i in 0..7
		for j in 0..7
			if board[i][j] == 1
				if      i + 2 < 8 &&  j + 1 < 8  &&  board[i+2][j+1] == 1
					return false

				elsif	i + 2 < 8 &&  j - 1 >=0 &&  board[i+2][j-1] == 1
						return false

			    elsif j + 2 < 8 && i - 1 >=0  && board[i-1][j+2] == 1
						return false

				elsif j + 2 < 8 && i + 1 < 8 && board[i+1][j+2] == 1
						return false

				else

				end
			end
		end
	end
 return true
end
cannot_capture([
  [1, 1, 0, 0, 0, 0, 0, 1],
  [0, 1, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 1, 1, 0, 1, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 1, 1, 0, 0, 0, 0, 1],
  [0, 0, 0, 0, 0, 0, 0, 0]
])
