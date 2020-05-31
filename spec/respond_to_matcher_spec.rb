class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "Awesome, I just purchased #{number} more hot chocolate beverages!"
  end
end

RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink) #only care that can respond to a drink method
    expect(subject).to respond_to(:drink, :discard) #pass multiple arguments of methods
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'confirms an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase) 
    expect(subject).to respond_to(:purchase).with(1).arguments #seeing how many arguments the argument has
  end

  it { is_expected.to respond(:purchase, :discard) }
  it { is_expected.to respond(:purchase).with(1).arguments }
end