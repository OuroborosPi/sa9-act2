# bank_account_spec.rb
require 'p4'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new(100)
      deposit_amount = 50
      account.deposit(deposit_amount)
      expect(account.balance).to eq(100 + deposit_amount)
    end
  end
  
  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account = BankAccount.new(100)
      withdrawal_amount = 50
      account.withdraw(withdrawal_amount)
      expect(account.balance).to eq(100 - withdrawal_amount)
    end
    
    it "does not change the balance if insufficient funds" do
      account = BankAccount.new(100)
      withdrawal_amount = 150
      account.withdraw(withdrawal_amount)
      expect(account.balance).to eq(100)
    end
  end
  
  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new(100)
      expect(account.balance).to eq(100)
    end
  end
end
