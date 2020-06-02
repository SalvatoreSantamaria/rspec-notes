RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15) #here add is NOT a real mehtod, its just defined to return 15

    # expect(calculator.add).to eq(15)
    # expect(calculator.add(3)).to eq(15)
    # expect(calculator.add(-2, -3 -5)).to eq(15)
    # expect(calculator.add('hello')).to eq(15)
  end

  #using a REAL method 
  it 'can stub one or more methods on a real object, but I am using a real method here' do
    arr = [1, 2, 3]
     
  #using a REAL method and returning an actual value
    expect(arr.sum).to eq(6) #just use the real method

    #stubbing (setting the return value of the method)
    #allow(arr).to receive(:sum).and_return(10) #receiving the actual method (not using double!!!) but still setting the return value
    #here i am just mocking 1 method on the array, so all of the other arr methods are valid
    #expect(arr.sum).to eq(10)

    arr.push(4)
    expect(arr).to eq([1, 2, 3, 4])
  end

  it 'can return multiple return values in sequence' do
    
    #emulate using a real array without using a real array
    mock_array = double
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil) #multiple args
    expect(mock_array.pop).to eq(:c) #returns these in order. returns c
    expect(mock_array.pop).to eq(:b) #then b
    expect(mock_array.pop).to be_nil #then it is always nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
  end
end


