RSpec.describe Array do 

    subject(:sally) do
        ['one', 'two']
    end

    it 'pop removes an item' do
        expect(subject.length).to eq(2)
        subject.pop()
        expect(subject.length).to eq(1)

    end
        it 'has a length of 2' do
        expect(sally).to eq(['one', 'two'])
    end

end