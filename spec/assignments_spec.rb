=begin
Create an example group with a string argument of "math calculations".
Inside the group, create an example with a string argument of "does basic math".
Inside the example, write 4 mathematical assertions of your choice.
The expect method should receive a valid mathematical expression (for example, 3 + 4 or 5 * 3).
The eq method should compare the result fo the evaluation with the right answer.
=end

RSpec.describe 'math calculations' do
    it('does bastic math') do
        expect(0 + 1).to eq(1)
        expect(1 + 1).to eq(2)
    end
end

=begin
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

