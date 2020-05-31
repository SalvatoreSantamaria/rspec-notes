=begin
Create an example group with a string argument of "math calculations".
Inside the group, create an example with a string argument of "does basic math".
Inside the example, write 4 mathematical assertions of your choice.
The expect method should receive a valid mathematical expression (for example, 3 + 4 or 5 * 3).
The eq method should compare the result fo the evaluation with the right answer.
=end

RSpec.describe 'math calculations' do
    it('does basic math') do
        expect(0 + 1).to eq(1)
        expect(1 + 1).to eq(2)
    end
end

=begin

#Assignment 8: Predicate, all and be Matchers

Questions for this assignment
1. What is an alternate way to write the assertion below?
expect({}.empty?).to be(true)
expect({}.empty?).to not_be(false)
expect({}).to be_empty

2. Write an assertion that validates that every element in the array [10, 20, 30] is even.
3. Write an assertion that validates that every element in the array [0, 1, 2] is greater than or equal to 0.
4. Which of the values below are truthy and which are falsy? Submit your answer as two organized lists.

Falsy: false, nil
Everything else: true

"hello"
false
0
-10
[]
99.99
:hello
true
nil
[1, 2, 3]
=end

=begin
#2
RSpec.describe 'array values even tester' do
    let(:arr) { return [10, 20, 30]}
    it 'validates every element in the array is even' do
        expect(arr).to all(be_even)
    end
end

RSpec.describe 'array values positive tester' do
    let(:arr) {return [0, 1, 2]}
    it 'validates all array elements are positive' do
        expect(arr).to all(be >= 0)
    end
end

=end

=begin
Assignment 9: Compound Expectations
1. Write a compound expectation that asserts the string firetruck starts with the substring "fire" and ends with the substring "truck".
2. Write a compound expectation that asserts that the number 20 is even and that it responds to the times mthod.
3. Write a compound expectation that asserts that the array [4, 8, 15, 16, 23, 42] includes the value 42 and starts with the values 4, 8, and 15.
=end

#1.

RSpec.describe 'firetruck tester' do 
    let(:firetruck) { return 'firetruck' }
    it 'asserts string firetruck starts with the substring "fire" and ends with the substring "truck"' do
        expect(firetruck).to start_with('fire').and end_with('truck')
    end
end


RSpec.describe 20 do
    it 'is even and responds to the times method' do
        expect(subject).to be_even.and respond_to(:times)
    end
end

RSpec.describe 'assignment 3' do
    let(:arr) { return [4, 8, 15, 16, 23, 42]}
    it 'does assignment 3' do
        expect(arr).to include(42).and start_with(4, 8, 15)
    end
end