require "minitest/autorun"
require_relative "so_close_method.rb"

class So_close_test < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end	

	def test_empty_array
	 	ticket = "1234"
	 	winners = []
	 	assert_equal([],grandbash(ticket, winners))
	 end

	def test_no_matches
		ticket = "1234"
		winners = ["5678", "3567", "0987"]
		assert_equal([], grandbash(ticket, winners))
	end	

	def test_your_winning_number
	 	ticket = "1234"
	 	winners = ["1234", "3567", "0987"]
	 	assert_equal(["1234"], grandbash(ticket, winners))
	end

	# def test_how_far_off
	# 	ticket = "1234"
	# 	winners = ["5064", "1235", "4532"]
		
	# end	

end		