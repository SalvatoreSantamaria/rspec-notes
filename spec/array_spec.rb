RSpec.describe Array do 
    it 'can get pushed onto' do
        expect(subject.length).to eq(0)
        #Subject helper returns an instance of the class under test

        subject.push(1)
        expect(subject.length).to eq(1)
        #With a class argument, RSpec is able to instantiate an instance of the class 
        #and make it lazily available via the subject method. 
    end
end