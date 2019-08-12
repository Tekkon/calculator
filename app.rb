require_relative 'calculator'

class App
  CALC_OPERATIONS = { '1' => :add, '2' => :subtract, '3' => :multiply, '4' => :divide }

  def self.run
    App.new.run
  end

  def run
    loop do
      n1, n2 = ask_two_numbers
      operation = ask_operation
      print_result(n1, n2, operation)
    end
  end

  private

  def ask_two_numbers
    puts "Please, put two numbers separated by space:"
    get_input
  end

  def ask_operation
    puts 'Please, choose one of the operations:'

    CALC_OPERATIONS.each do |key, value|
      puts key + '. ' + value.to_s
    end

    get_input[0]
  end

  def print_result(n1, n2, operation)
    puts 'The result of the operation is: ' + get_operation_result(Calculator.new(n1.to_i, n2.to_i), operation)
  end

  def get_input
    gets.chomp.split /\s/
  end

  def get_operation_result(calculator, operation)
     method = CALC_OPERATIONS[operation]
     return 'You should choose an operation from the list above!' if method.nil?

     calculator.send(method).to_s
  end
end
