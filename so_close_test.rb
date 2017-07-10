require "minitest/autorun"
require_relative "so_close_method.rb"

class So_close_test < Minitest::Test

	def test_1_equals_1
		assert_equal(1,1)
	end	

	def test_empty_array
		assert_equal([],grandbash)
	end	
end		