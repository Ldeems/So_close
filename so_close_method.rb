



def grandbash(ticket, winners)
	matches = []
	winners.each do |winners|
		if winners == ticket
		matches << ticket
		end
	end		
	matches
end


#your number is 5678
# your_ticket = "5678"
# winning_numbers = ["5678", "3567", "0987"]