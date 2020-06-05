#the allow syntax allows us to spy on a single specific method

class Car
  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage

  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model) #make new car object, give it name of model, and then push that into storage array
  end
end

#to test, we need to fake car class and fake car instance
RSpec.describe Garage do
  let(:car) { instance_double(Car) }

  before do
    allow(Car).to receive(:new).and_return(car) #feed in class, and have it return :car from line 23
  end

  it 'adds a car to its storage' do
    subject.add_to_collection('Honda Civic') #do the business logic by invoking the method we want to test. subject is the same as garage.new because under Garage.
    #Garage.new(add_to_collection('Honda Civic')) #this doesn't work, not sure how to write this syntax
    expect(Car).to have_received(:new).with('Honda Civic') #test that Car received new method with the right argument (which is 'honda civic')
    expect(subject.storage.length).to eq(1)
    expect(subject.storage.first).to eq(car)
  end

end