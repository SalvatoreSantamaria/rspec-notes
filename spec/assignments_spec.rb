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

=begin
#1.

RSpec.describe 'firetruck tester' do 
    let(:firetruck) { return 'firetruck' }
    it 'asserts string firetruck starts with the substring "fire" and ends with the substring "truck"' do
        expect(firetruck).to start_with('fire').and end_with('truck')
    end
end

#2
RSpec.describe 20 do
    it 'is even and responds to the times method' do
        expect(subject).to be_even.and respond_to(:times)
    end
end

#3
RSpec.describe 'assignment 3' do
    let(:arr) { return [4, 8, 15, 16, 23, 42]}
    it 'does assignment 3' do
        expect(arr).to include(42).and start_with(4, 8, 15)
    end
end
=end

=begin 
Assignment 10: Doubles

Paste your code solutions to each question below. 
You can assume the basic boilerplate code for a test suite has already been written (see below).

RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    # For each question, write the code that should go here
  end
end

Questions for this assignment
Create a double with the name "Database Connection". 
The double should have a method called connect that returns the value true.
The double also have a method called disconnect that returns the value "Goodbye".
The double's methods should be assigned in the initial invocation of the double method.
Write two expectations, one for connect and one for disconnect, that confirms the return value of each.

Assign the double to the variable db.
Create a double with the name "File System". Assign the double to the variable fs.
Using the allow method, give the double a read method that returns the value "Romeo and Juliet".
Using the allow method, give the double a write method that returns the value false.
=end

RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    db_connection = double('Database Connection')    
    allow(db_connection).to receive(:connect).and_return(true)
    allow(db_connection).to receive(:disconnect).and_return('Goodbye')
    
    expect(db_connection.connect).to eq(true)
    expect(db_connection.disconnect).to eq('Goodbye')
  end

    it 'does test 2' do
    fs = double('File System')
    allow(fs).to receive(:read).and_return('R and J')
    allow(fs).to receive(:write).and_return(false)

    expect(fs.read).to eq('R and J')
    expect(fs.write).to eq(false)

  end
end