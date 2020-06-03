#how to customize the return value of a stubbed methods depending on the argument(s) with which the method is invokes

#mimiscing the 'first' method 
RSpec.describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    three_element_array = double # emulating arr = [1, 2, 3]

    allow(three_element_array).to receive(:first).with(no_args).and_return(1) #allow double to receive method without any args and return 1
    #arr.first(1)

    allow(three_element_array).to receive(:first).with(1).and_return([1]) #one is not the number of args, it's the actual value
    allow(three_element_array).to receive(:first).with(2).and_return([1, 2]) #two is the not the number, its the actual value
    allow(three_element_array).to receive(:first).with(be >= 3).and_return([1, 2, 3])

    expect(three_element_array.first).to eq(1)
    expect(three_element_array.first(1)).to eq([1])
    expect(three_element_array.first(2)).to eq([1, 2])
    expect(three_element_array.first(3)).to eq([1, 2, 3])
    expect(three_element_array.first(100)).to eq([1, 2, 3])
  end

end