RSpec.describe Hash do
    subject(:bob) do #Hash is bob
        {a: 1, b: 2}
        #puts "#{bob}""
    end
    #can also do the below, its the same thing
    # let(:bob) {
    #     {a: 1, b:2}
    # }
    
    it 'has two key-value pairs' do
        expect(subject.length).to eq(2)
        expect(bob.length).to eq(2)
    end

end
