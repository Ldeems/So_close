def grandbash(ticket,winning_ticket)
    matches = []
    
    winning_ticket.each do |winner|
        if  winner == ticket
            matches << ticket
        end
    end    

    unless matches.any?
        one_off?(ticket,winning_ticket)
    else
        matches
    end
end


def one_off?(ticket,winner)
    
    one_off_arr = []

    unless ticket.empty?
        
        ticket_arr = ticket.chars

            
        winner.each do |win|
            one_off_counter = 0
            
            winner_arr = win.chars
            #p "#{winner_arr} chars is here"
            index_counter = 0

                winner_arr.each do |num|
                #p "#{num} num is here"
                    unless num == ticket_arr[index_counter]
                    one_off_counter += 1
                    end

                    index_counter += 1
                end
            
            if one_off_counter == 1
            one_off_arr << win
            end
        end
    end    

one_off_arr
end


def whats_on(ycard, tcard)
	c = 0
	m = 0

	tcard.length.times do |x|
		if tcard[x] == ycard[x]
			m += 1 
		end
	end
	m	
end






			



