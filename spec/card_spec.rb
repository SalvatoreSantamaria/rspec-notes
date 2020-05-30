################################################################################################################################
#it and describe
=begin 
class Card
    attr_reader :type
    # def initialize(type)
    #     @type = type
    # end
end

this is an 'example', aka a test

RSpec.describe(Card) do #the method describe is taking an argument, here it is taking the class (can take in string too. ideally take in the class). 
    it('has a type') do #it is a method, accepting a string. the string we are passing in should describe the expected behavior
    #specify('has a type')#this does the exact same thing as above
        card = Card.new("Ace of Spades")
        expect(card.type).to(eq('Ace of Spades'))  #expect is accepting an argument. 
    #rspec will be processing and evaluating whatever is passed in, 
    #but the argument we are giving to the to method is in eq(). expect is returning an object, 
    #with a 'to' method available on the object
    end
end
=end
################################################################################################################################
#Before Hooks

=begin
class Card
    attr_reader :rank, :suit
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
end


RSpec.describe(Card) do #the method describe is taking an argument, here it is taking the class (can take in string too. ideally take in the class). 
    #use before to dry code
    before do #before is a hook 
        @card = Card.new('Ace', 'Spades') #@card needs to be an instance variable after this block has run. 
    end

    it('has a rank') do
        #card = Card.new('Ace', 'Spades')
        #expect(card.rank).to eq('Ace')
        expect(@card.rank).to eq('Ace')
    end
    it('has a suit') do
        #card = Card.new('Ace', 'Spades')
        #expect(card.suit).to eq('Spades')
        expect(@card.suit).to eq('Spades')
    end
end
=end

################################################################################################################################
#The Let Method

class Card
    attr_reader :rank, :suit
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
end


RSpec.describe(Card) do #the method describe is taking an argument, here it is taking the class (can take in string too. ideally take in the class). 

    #can also use let, instead of the before block above. let will only run when the it block using (below) it is run
    let(:card) { Card.new('Ace', 'Spades') } #let is a method, taking in a variable card, which is a symbol. The block on the right represents what that card variable equals
    #let!(:card){....} this WILL load before the block using below is run 
    #notice below that the symbol :card is just accessed as card!!!!

    it('has a rank') do
        expect(card.rank).to eq('Ace') #card is :card!
    end
    it('has a suit') do
        expect(card.suit).to eq('Spades'), "This is a custom message! Change to add custom message"
    end
end

