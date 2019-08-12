require 'minitest/autorun'
require_relative 'calculator'

class CalculatorTest < Minitest::Test
  def test_add_returns_the_sum_of_two_numbers
    calculator = Calculator.new(2, 3)
    assert calculator.add == 5
  end

  def test_subtract_returns_the_substraction_of_two_numbers
    calculator = Calculator.new(5, 2)
    assert calculator.substract == 3
  end

  def test_multiply_returns_the_multiplication_of_two_numbers
    calculator = Calculator.new(5, 2)
    assert calculator.multiply == 10
  end

  def test_divide_returns_the_division_of_two_numbers
    calculator = Calculator.new(5, 2)
    assert calculator.divide == 2
  end

  def test_raises_argument_error_when_arguments_are_not_integer
    assert_raises ArgumentError do
      calculator = Calculator.new('s', 2.5)
    end
  end
end

