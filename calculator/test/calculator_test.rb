require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator'

# pseudocode: build a calculator
# test if the calculator exists
# test if the calculator can add
# test if the calculator can subtract
# test if the calculator can create a sum
# test if the calculator can clear

class CalculatorTest < Minitest::Test

  def test_calculator_exists
    calculator = Calculator.new
    assert_instance_of Calculator, calculator
  end
    
  def test_caluculator_add
    calculator = Calculator.new
    assert_equal 5, calculator.add(5)
  end

  def test_calculator_subtract
    calculator = Calculator.new
    assert_equal (-5), calculator.subtract(5)
  end

  def test_calculator_total
    calculator = Calculator.new
    assert_equal 0, calculator.total
  end

  def test_caluculator_clear
    calculator = Calculator.new
    assert_equal 0, calculator.clear
  end
    
end
  
