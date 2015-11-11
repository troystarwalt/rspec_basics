describe Array do 

	before(:each) do
		@array = [1, 2, 3, 4, 5, 0]
		puts "starting testing"

	end

	it ".drop should drop the first three items of the array" do
		expect(@array.drop(3)).to eq([4, 5, 0])
	end

	it "should allow you to #count the items in it" do
		expect(@array.count).to eq(6)
	end

	it ".clear should empty the array" do
		expect(@array.clear).to eq([])
	end
# Delete will alter the array but not really
	it ".delete(1) will retrun the value that I'm asking it to delete" do
		expect(@array.delete(1)).to eq(1)
	end

	it ".insert should add one item to the array" do
		expect(@array.insert(4, 'beer')).to eq([1, 2, 3, 4, 'beer', 5, 0])
	end

	it "should return length of 6" do
		expect(@array.length).to eq(6)
	end

	after(:each) do
		puts "-------Test Complete--------"
		puts @array
	end

end