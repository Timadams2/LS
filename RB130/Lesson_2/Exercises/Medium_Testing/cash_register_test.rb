require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(500)
    @transaction = Transaction.new(50)
  end
  
  def test_accept_money
    @transaction.amount_paid = 50
    @register.accept_money(@transaction)
    new_amount = @register.total_money
    
    assert_equal(550, new_amount)
  end
  
  def test_change
    @transaction.amount_paid = 80
    @register.accept_money(@transaction)
    change_given = @register.change(@transaction)
    
    assert_equal(30, change_given)
  end
  
  def test_give_receipt
    assert_output("You've paid $50.\n") { @register.give_receipt(@transaction) }
  end
  
end