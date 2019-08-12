require_relative 'calculator'

class App
  attr_accessor :n1, :n2, :operation, :result

  AVAILABLE_OPERATIONS = %w(1 2 3 4)
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
      self.n1, self.n2 = gets.chomp.split(/\s/)

      break if is_integer?(n1) && is_integer?(n2)
    end
  end

  def ask_operation
    loop do
      puts 'Please, choose one of the operations:'

      CALC_OPERATIONS.each do |key, value|
        puts "#{key}. #{value.to_s}"
      end

      self.operation = gets.chomp

      break if AVAILABLE_OPERATIONS.include?(operation)
    end
  end

  def perform_operation
    calculator = Calculator.new(n1.to_i, n2.to_i)
    method = CALC_OPERATIONS[operation]

    self.result = calculator.send(method).to_s
  end

  def print_result
    puts "The result of the operation is: #{result}"
  end

  def is_integer?(string)
    true if Integer(string) rescue false
  end
end
