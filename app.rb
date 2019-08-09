require_relative 'calculator'

calculator = Calculator.new

loop do
  puts "Please, put two numbers separated by space:"

  input = gets.chomp
  *params = input.split /\s/

  n1 = params[0].to_i
  n2 = params[1].to_i

  puts 'Please, choose one of the operations:'
  puts '1. add'
  puts '2. substract'
  puts '3. multiply'
  puts '4. divide'

  input = gets.chomp
  command, *params = input.split /\s/

  puts 'The result of the operation is: ' +
  case command
  when '1'
    calculator.add(n1, n2)
  when '2'
    calculator.substract(n1, n2)
  when '3'
    calculator.multiply(n1, n2)
  when '4'
    calculator.divide(n1, n2)
  else
    'You should choose an operation from the list above!'
  end.to_s
end
