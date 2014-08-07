require 'test/unit'
require 'app/calculator'

class CalculatorTest < Test::Unit::TestCase
  
  def setup
    @calculator = Calculator.new
  end
  
  def test_can_add
    actual = @calculator.add(2, 2)
    assert_equal(4, actual)
  end 
  
  def test_can_subtract
    actual = @calculator.subtract(5, 3)
    assert_equal(2, actual)
  end 
  
  def test_can_multiply
    actual = @calculator.multiply(4, 6)
    assert_equal(24, actual)
  end
  
  def test_can_divide
    actual = @calculator.divide(17, 10)
  rescue ZeroDivisionError
    assert_equal(1.7, actual)
  end
end
