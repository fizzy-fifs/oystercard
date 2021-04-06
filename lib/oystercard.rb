class Oystercard
  MaxBalance = 90
  attr_reader :balance
  def initialize(balance = 0)
    @balance = balance
  end

  def top_up(amount)
    raise "Exceeded maximum amount: £#{MaxBalance}" if @balance + amount > MaxBalance
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end
end