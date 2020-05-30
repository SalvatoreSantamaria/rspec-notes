
RSpec.describe Hash do
  #let(:my_hash) {{}} or
  #Hash.new

  #this is was subject is doing behind the scences. 
#   let(:subject) { 
#       Hash.new 
#     }



    it 'should start of emptpy' do
        puts subject 
        puts subject.class
        expect(subject.length).to eql(0) #subject is Hash.new!   #subject is the equivalent of doing Hash.new, a new class, because subject is above!!!!
        #subject is a different object between every example
    end


end
