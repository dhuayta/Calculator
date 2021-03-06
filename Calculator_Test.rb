require 'minitest/autorun'
require_relative 'Calculator_Code'

describe Calculator do 
	before do 
		@calculator = Calculator.new
	end
	it 'Add numbers = space' do
		@calculator.Add("").must_equal 0
	end
	it 'Add 1 numbers' do
		@calculator.Add("1").must_equal 1
	end
	it 'Add 2 numbers' do
		@calculator.Add("1,2").must_equal 3
	end
	it 'Add 3 numbers' do
		@calculator.Add("1,2,3").must_equal 6
	end
	it 'Add 5 numbers' do
		@calculator.Add("1,2,3,4,5").must_equal 15
	end
end
