# described class is a helper method

class King
    attr_reader :name

    def initialize(name)
        @name = name
    end
end


#described class dynamically references whatever class is under test, meaning the class name can be changed
RSpec.describe King do #try changing to Queen and the class on line 3 to Queen
    #subject{ King.new('Boris')}
    subject { described_class.new('Boris') }

    #let(:louis) { King.new('Louis')}
    let(:louis) { described_class.new('Louis')}

    it 'represents a monarch' do
        expect(subject.name).to eq('Boris')
        expect(louis.name).to eq('Louis')
    end
end
