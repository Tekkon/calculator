class Calculator
  attr_reader :n1, :n2

  def initialize(n1, n2)
    @n1 = n1
    @n2 = n2
    raise_argument_error if !n1.is_a?(Integer) || !n2.is_a?(Integer)
  end
  
  def add
    n1 + n2
  end

  def subtract
    n1 - n2
  end

  def multiply
    n1 * n2
  end

  def divide
    n1 / n2
  end

  private

  def raise_argument_error
    raise ArgumentError.new("Both arguments should be Integer!")
  end
end
