require_relative 'calculator'

class App
  def self.run
    App.new.run
  end

  def run
    loop do
      choose_operation(create_calculator)
    end
  end

  private

  def get_chomp
    input = gets.chomp
    *params = input.split /\s/
  end

  def create_calculator
    puts "Please, put two numbers separated by space:"

    params = get_chomp

    n1 = params[0].to_i
    n2 = params[1].to_i

    Calculator.new(n1, n2)
  end

  def choose_operation(calculator)
    puts 'Please, choose one of the operations:'
    puts '1. add'
    puts '2. substract'
    puts '3. multiply'
    puts '4. divide'

    params = get_chomp

    puts 'The result of the operation is: ' +
             case params[0]
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
