=begin
hooks are to allow a pause in the code while something else happens
=end




RSpec.describe 'before and after hooks' do

    #runs once before describe or context block that the context symbol is in. here its in the 'before and after hooks' describe block
    #runs once before or after overall in the current block it is written
    before(:context) do #symbol of context
       puts 'Before context runs just once in the block it is written'
    end

    after(:context) do
        puts 'After context'
    end

    #runs before / after each sest
    before(:example) do
        puts 'before example runs before every example'
    end

    after(:example) do #generally for reseting a shared 'thing' across all examples. ie, like mutating an object
        puts 'after example'
    end

    it 'is just a random example' do
        expect(5 * 4).to eq(20)
    end

    it 'is just a random example again' do
        expect(3 - 2).to eq(1)
    end
end
