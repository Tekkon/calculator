class Calculator
  def initialize(n1, n2)
    @n1 = n1
    @n2 = n2
    check_arguments(n1, n2)
  end
  
  def add
    @n1 + @n2
  end

  def substract
    @n1 - @n2
  end

  def multiply
    @n1 * @n2
  end

  def divide
    @n1 / @n2
  end

  private

  def check_arguments(n1, n2)
    raise ArgumentError.new("Both arguments should be Integer!") if n1.class != Integer || n2.class != Integer
  end
end

