#mocking class method

class Deck #this is a class method. so have to use self
  def self.build
    # Business logic to build a whole bunch of cards
  end
end

class CardGame
  attr_reader :cards #attr_reader so can read cards

  def start #instance method
    @cards = Deck.build  #deck class with a method of build, asssigned to instance varaible called cards
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start #subject represeents cardgame.new
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end