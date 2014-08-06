require 'test/unit'
require 'app/calculator'

class CalculatorTest < Test::Unit::TestCase
  def test_can_add
    calculator = Calculator.new
    actual = calculator.add(2, 2)
    assert_equal(4, actual)
  end  
end
