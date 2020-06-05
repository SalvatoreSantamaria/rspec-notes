RSpec.describe 'spies' do
  let(:animal) { spy('animal') } #var animal = method spy with string of animal
  # spies are an alternate to a double. 
  # with doubles the expectation is written before the action. have to tell double about the methods and that the methods are expected to be invoked.
  # with spies the expetation is written after the action. spy will keep track of any messages that it receives.

  it 'confirms that a message has been received' do #animal is a fake object that keeps track of all the messages it receives.
    animal.eat_food
    expect(animal).to have_received(:eat_food) #not to receive like with a double because animal.eat_food is first. 
    #with a double the animal.eat_food is after the expects, so use to receive.
    expect(animal).not_to have_received(:eat_human) 
  end

  it 'resets between examples' do # spies reset between examples
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retains the same functionality of a regular double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('Sushi')
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).with('Sushi')
    expect(animal).to have_received(:eat_food).once.with('Sushi')
  end

end