require_relative 'calculator'
require_relative 'string'

class App
  attr_accessor :n1, :n2, :operation, :result

  CALC_OPERATIONS = { '1' => :add, '2' => :subtract, '3' => :multiply, '4' => :divide }

  def self.run
    App.new.run
  end

  def run
    loop do
      ask_two_numbers
      ask_operation
      perform_operation
      print_result
    end
  end

  private

  def ask_two_numbers
    loop do
      puts "Please, put two Integer numbers separated by space:"
      value1, value2 = gets.chomp.split(/\s/)

      if value1.is_integer? && value2.is_integer?
        self.n1 = value1.to_i
        self.n2 = value2.to_i
        break
      end
    end
  end

  def ask_operation
    loop do
      print_operations_menu
      self.operation = gets.chomp

      break if CALC_OPERATIONS.keys.include?(operation)
    end
  end

  def print_operations_menu
    puts 'Please, choose one of the operations:'

    CALC_OPERATIONS.each do |key, value|
      puts "#{key}. #{value.to_s}"
    end
  end

  def perform_operation
    calculator = Calculator.new(n1, n2)
    method = CALC_OPERATIONS[operation]

    self.result = calculator.send(method)
  end

  def print_result
    puts "The result of the operation is: #{result}"
  end
end
