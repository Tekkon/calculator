require 'minitest/autorun'
require_relative 'calculator'

class CalculatorTest < Minitest::Test
  def test_add_returns_the_sum_of_two_numbers
    calculator = Calculator.new
    assert calculator.add(2, 3) == 5
  end

  def test_add_raises_error_when_arguments_are_strings
    assert_raises "Both numbers should be Integer" do
      calculator = Calculator.new
      calculator.add('s', 'b')
    end
  end

  def test_add_raises_error_when_arguments_are_floats
    assert_raises "Both numbers should be Integer" do
      calculator = Calculator.new
      calculator.add(2.5, 3.5)
    end
  end

  def test_subtract_returns_the_substraction_of_two_numbers
    calculator = Calculator.new
    assert calculator.substract(5, 2) == 3
  end

  def test_substract_raises_error_when_arguments_are_strings
    assert_raises "Both numbers should be Integer" do
      calculator = Calculator.new
      calculator.substract('s', 'b')
    end
  end

  def test_substract_raises_error_when_arguments_are_floats
    assert_raises "Both numbers should be Integer" do
      calculator = Calculator.new
      calculator.substract(2.5, 3.5)
    end
  end

  def test_multiply_returns_the_multiplication_of_two_numbers
    calculator = Calculator.new
    assert calculator.multiply(5, 2) == 10
  end

  def test_multiply_raises_error_when_arguments_are_strings
    assert_raises "Both numbers should be Integer" do
      calculator = Calculator.new
      calculator.multiply('s', 'b')
    end
  end

  def test_multiply_raises_error_when_arguments_are_floats
    assert_raises "Both numbers should be Integer" do
      calculator = Calculator.new
      calculator.multiply(2.5, 3.5)
    end
  end

  def test_divide_returns_the_division_of_two_numbers
    calculator = Calculator.new
    assert calculator.divide(5, 2) == 2
  end

  def test_divide_raises_error_when_arguments_are_strings
    assert_raises "Both numbers should be Integer" do
      calculator = Calculator.new
      calculator.divide('s', 'b')
    end
  end

  def test_divide_raises_error_when_arguments_are_floats
    assert_raises "Both numbers should be Integer" do
      calculator = Calculator.new
      calculator.divide(2.5, 3.5)
    end
  end
end
