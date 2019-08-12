require_relative 'calculator'

class App
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
    puts "Please, put two numbers separated by space:"
    @n1, @n2 = get_input
  end

  def ask_operation
    puts 'Please, choose one of the operations:'

    CALC_OPERATIONS.each do |key, value|
      puts key + '. ' + value.to_s
    end

    @operation = get_input[0]
  end

  def perform_operation
    calculator = Calculator.new(@n1.to_i, @n2.to_i)
    method = CALC_OPERATIONS[@operation]
    return invalid_operation if method.nil?

    @result = calculator.send(method).to_s
  end

  def print_result
    puts 'The result of the operation is: ' + @result unless @result.nil?
  end

  def get_input
    gets.chomp.split /\s/
  end

  def invalid_operation
    @result = nil
    puts 'You should choose an operation from the list above!'
  end
end
