RSpec.shared_examples 'a Ruby object with a length method that returns 3' do #just have to use included_examples to inlcude all the it statement examples
    #dont have to declare subject in here
    it 'returns the number of items' do
        expect(subject.length).to eq(3)
    end

    it 'does something else' do
    end
end



RSpec.describe Array do
    subject { [1, 2, 3]}

    include_examples 'a Ruby object with a length method that returns 3'

    # it 'returns the number of items' do
    #     expect(subject.length).to eq(3)
    # end
end

RSpec.describe String do
    subject { 'abc'}

    include_examples 'a Ruby object with a length method that returns 3'

    # it 'returns the number of items' do
    #     expect(subject.length).to eq(3)
    # end
end

RSpec.describe Hash do
    subject {{a: 1, b: 2, c: 3}}

    include_examples 'a Ruby object with a length method that returns 3'


    # it 'returns the number of items' do
    #     expect(subject.length).to eq(3)
    # end
end

class SausageLink
    def length
        3
    end 
end


RSpec.describe SausageLink do
    subject { described_class.new }

    include_examples 'a Ruby object with a length method that returns 3'

    # it 'returns the number of items' do
    #     expect(subject.length).to eq(3)
    # end
end