#The context Method and Nested Describes

RSpec.describe '#even? method' do # test instance methods with a # before. test class methods with a . before
  # it 'should return true if number is even' #not the best way to do it, because there are conditional in the it statement (additional if statement)
  # it 'should return false if number is odd'

  context 'with even number' do #context is just an alias for describe
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)

    end
  end
end

#how to get the output in the terminal?