require_relative 'calculator'

class App
  def self.run
    App.new.run
  end

  def run
    loop do
      n1, n2 = get_numbers
      get_operation_result(create_calculator(n1.to_i, n2.to_i), choose_operation)
    end
  end

  private

  def get_input
    gets.chomp.split /\s/
  end

  def get_numbers
    puts "Please, put two numbers separated by space:"
    get_input
  end

  def create_calculator(n1, n2)
    Calculator.new(n1, n2)
  end

  def choose_operation
    puts 'Please, choose one of the operations:'
    puts '1. add'
    puts '2. substract'
    puts '3. multiply'
    puts '4. divide'

    get_input[0]
  end

  def get_operation_result(calculator, operation)
    puts 'The result of the operation is: ' +
             case operation
             when '1'
               calculator.add
             when '2'
               calculator.substract
             when '3'
               calculator.multiply
             when '4'
               calculator.divide
             else
               'You should choose an operation from the list above!'
             end.to_s
  end
end
