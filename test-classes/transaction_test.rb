require './transaction.rb'

describe Transaction do

	context "Let's test Transaction" do
		let(:transaction){Transaction.new(credit_account: 123, debit_account: 400, amount: 800, time: Time.now)}


		it " should pass this test for account number" do
			expect(transaction.credit_account).to eq(123)
		end

		it " should be fine when testing amount" do
			expect(transaction.debit_account).to eq(400)
		end

		it " should return a passed test for Time" do
			expect(transaction.time).to be_within(1).of(Time.now)
		end

		it " should pass with switching to currency" do
			expect(transaction.amount_to_currency).to eq("$8.00")
		end

		it " should return a passed test for pretty_time" do
			expect(transaction.pretty_time).to eq("Monday, 09 Nov 2015  4:12 PM")
		end
	end

end