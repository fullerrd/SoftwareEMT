class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

 

def rps_game_winner(game)

    raise WrongNumberOfPlayersError unless game.length == 2
	win_array = ["RR","RS","PP","PR","SS","SP"]
	loose_array = ["RP","PS","SR"]
	played = game[0][1] + game[1][1]
	played.upcase!
    if win_array.include? played
		result = 0
		#puts game[0][0]
	elsif loose_array.include? played
		result = 1
		#puts game[1][0]
	else
		result = nil
		raise NoSuchStrategyError
	end
	result
end
def tournament_winner(bracket)
	left_winner = [bracket[0][0][rps_game_winner(bracket[0][0])],bracket[0][1][rps_game_winner(bracket[0][1])]]
	left_winner = left_winner[rps_game_winner(left_winner)][0..1]
	right_winner =[bracket[1][0][rps_game_winner(bracket[1][0])],bracket[1][1][rps_game_winner(bracket[1][1])]]
	right_winner = right_winner[rps_game_winner(right_winner)][0..1]
	final = [left_winner,right_winner]
	puts "And the tournament winner issss.... " + final[rps_game_winner(final)][0]  + "!!!"
end
game1 = [["Armando", "P"], ["Dave", "S"]]
game2 = [ ["Armando", "Q"], ["Dave", "S"] ]
game3 = [ ["Armando", "P"] ]
puts "Dave == " + game1[rps_game_winner(game1)][0]

bracket = [[[ ["Armando", "P"], ["Dave", "S"]], [["Richard", "R"],["Michael", "S"]],],[[ ["Allen", "S"], ["Omer", "P"] ],[ ["David E.", "R"], ["Richard X.", "P"] ]]]
tournament_winner(bracket)
#puts rps_game_winner(bracket[1][1])
#puts "NoSuchStrategyError == " + game2[rps_game_winner(game2)][0]
puts "WrongNumberOfPlayersError" + game3[rps_game_winner([ ["Armando", "P"] ])]
