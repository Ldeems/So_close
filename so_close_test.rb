require "minitest/autorun"
require_relative "so_close_method.rb"

class So_close_test < Minitest::Test

 def test_1_equals_1
        assert_equal(1,1)
    end

    def test_for_empty_array
        ticket = []
        winner = []
        assert_equal([],grandbash(ticket,winner))
    end

    def test_returns_winner_array_empty
        ticket = "1243"
        winner = []
        assert_equal([],grandbash(ticket,winner))
    end

    def test_your_ticket_with_a_match
     ticket = "1234"
     winner = ["1234", "5555", "8789"]
     assert_equal(["1234"], grandbash(ticket,winner))
    end

    def test_ticket_no_match
        ticket = "5432"
        winner = ["1234", "5555", "8789"]
        assert_equal([],grandbash(ticket,winner))
    end

    def test_one_off
        ticket = "1234"
        winner = ["1235","5555","8789"]
        assert_equal(["1235"],one_off?(ticket,winner))
    end

    def test_one_off_return_multiple_numbers
        ticket = "5432"
        winner = ["5438", "5555", "5434"]
        assert_equal(["5438","5434"],one_off?(ticket,winner))
    end
    
    def test_gandbash_return_multiple_numbers
        ticket = "5432"
        winner = ["5438", "5555", "5434"]
        assert_equal(["5438","5434"],grandbash(ticket,winner))
    end

    def test_more_digits_match
    	ticket = "687524"
    	winner = ["123456", "687524","456974"]
    	assert_equal(["687524"], grandbash(ticket,winner))
    end	


    def test_more_digits_off_one
    	ticket = "456789"
    	winner = ["123456", "556789","456974"]
    	assert_equal(["556789"], grandbash(ticket,winner))
    end	

    def test_8_digit_number_match
    	ticket = "12345678"
    	winner = ["12345678", "78945612", "45698712"]
    	assert_equal(["12345678"], grandbash(ticket,winner))
    end

    def test_8_digit_num_off_1
    	ticket = "98765432"
    	winner = ["98765431", "12345678", "45632178"]
    	assert_equal(["98765431"], grandbash(ticket,winner))
    end	
end    	









		