RSpec.describe 'satisfy matcher' do
  # subject { 'racecar' }
  subject { 'racecars' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse  } #satify needs block with what we want to test. is this true?
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') do |value| #satify needs a block with what we want to test. is this true?
      value == value.reverse #boolean
    end
  end
end
