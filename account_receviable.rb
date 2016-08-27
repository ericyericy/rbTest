class AccountReceviable
  attr_accessor :title, :amount

	def initialize(title, amount)
		@title = title
		@amount = amount
	end

  def amount
    @amount / 32  #用美金計價
  end

  def sales_tax_amount #計算營業稅金額
    amount * 0.05
  end

  def invoice_amount #計算加上稅的帳面金額
    amount * 1.05
  end
end

class Rebate  # 現金回饋
  attr_accessor :account_receivable, :rate

  def initialize(account_receivable, rate)
    @account_receivable = account_receivable
    @rate = rate
  end

  def calculate_rebate
    # 使用應收帳款的 amount 方法計算現金回饋金額
    account_receivable.amount * rate
  end 
end

receivable1 = AccountReceviable.new("應收帳款1", 10000)
puts receivable1.sales_tax_amount

# 計算回扣金額
rebate = Rebate.new(receivable1, 0.02)
puts rebate.calculate_rebate

# 計算實際收入的金額
puts receivable1.invoice_amount - rebate.calculate_rebate