

class ProgrammingLanguage
    attr_reader :name #public reader method for name

    def initialize(name = 'Ruby') #if no value is provided, I am setting the default value here to ruby
        @name = name
    end
end




RSpec.describe ProgrammingLanguage do #describe using the class name, so here I am testing the class
    let(:language){ #this is available to every child/nested scope with in it
        ProgrammingLanguage.new('Python')
    }

    it 'should store the name of the language' do
        expect(language.name).to eq('Python')
    end

    context 'with no argument' do
        let(:language) {
            ProgrammingLanguage.new() #not passing in args
        }
        it 'should default to Ruby as the name' do
            expect(language.name).to eq('Ruby') #have to include let in this block because rspec with take the first upwardly definition language, it would take the python 
        end
    end
end
