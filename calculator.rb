class Calculator
  def add(n1, n2)
    check_agruments(n1, n2)
    n1 + n2
  end

  def substract(n1, n2)
    check_agruments(n1, n2)
    n1 - n2
  end

  def multiply(n1, n2)
    check_agruments(n1, n2)
    n1 * n2
  end

  def divide(n1, n2)
    check_agruments(n1, n2)
    n1 / n2
  end

  private

  def check_agruments(n1, n2)
    raise "Both numbers should be Integer!" if n1.class != Integer || n2.class != Integer
  end
end
