class Person
  def a(seconds)
    sleep(seconds)
    "Hello"
  end

  def add_method(num)
    num + 1
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(methoda: "Hello", methodb: 20) #methodb is not actual an method on class person! this is a method we are accidentally testing!
      expect(person.methoda).to eq("Hello")
    end
  end

  describe 'instance double' do #aka a verifying double
    it 'can only implement methods that are defined on the class' do
      # person = instance_double(Person, a: 'Hello', b: 20)

      person = instance_double(Person) #not making a mock of Person class, making mock of any instance of Person class
      allow(person).to receive(:a).with(3).and_return("Hello") #allow person double to receive the method a. 3 is the param for seconds
      expect(person.a(3)).to eq("Hello")
    end

      #unsure why this doesn't work 
      # it 'increments by one' do
      #   person2 = instance_double(Person)
      #   allow(person2).to receive(:add_method).with(1)
      #   #testperson = Person.new
      #  # testperson.add_method(1)
      #   expect(person2.add_method(1)).to eq(2)
      # end

  end

end