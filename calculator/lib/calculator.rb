class Calculator
  attr_reader :total

  def initialize
    @total = 0
  end

  def add(num)
    @total += num
  end

  def subtract(num)
    @total -= num
  end

  def clear
    @total = 0
  end

end


