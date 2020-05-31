=begin
Create an example group with a string argument of "math calculations".
Inside the group, create an example with a string argument of "does basic math".
Inside the example, write 4 mathematical assertions of your choice.
The expect method should receive a valid mathematical expression (for example, 3 + 4 or 5 * 3).
The eq method should compare the result fo the evaluation with the right answer.
=end

Rspec.describe 'math calculations' do
    it('does bastic math') do
        expect(0 + 1).to eq(1)
        expect(1 + 1).to eq(2)
    end
end