# movie_spec.rb
class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3) #ruby sleep method to pause application for 3 seconds
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting


#Replacing and object with a double.
#Goal here is to seperate the movie class from the actor class
RSpec.describe Movie do
  let(:stuntman) { 
    return double("Mr. Danger", 
      #mimic-ing the real methods here. there are all 'fake' or mock methods
      ready?: true, 
      act: 'Any string at all', 
      fall_off_ladder: 'Sure! Lets do it', 
      light_on_fire: true
      )}
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do

      #if I want to test the actions of the methods below, 
      #those would get tested in the ACTOR class (actor.ready?, actor.act, etc...)
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:fall_off_ladder)
      expect(stuntman).to receive(:light_on_fire)


      # expect(stuntman).to receive(:light_on_fire).once
      # expect(stuntman).to receive(:light_on_fire).exactly(1).times
      #expect(stuntman).to receive(:light_on_fire).at_most(1).times

      # expect(stuntman).to receive(:act).twice
      # expect(stuntman).to receive(:act).exactly(2).times
      #expect(stuntman).to receive(:act).at_least(2).times
      subject.start_shooting
    end
  end
end


#own example


class Actor2
  def initialize(name)
    @name = name
  end

  def a2_method
    puts "Actor2.a2_method"
  end
end

class Movie2
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def m2_method
      actor.a2_method
  end
end


#Replacing and object with a double.
#Goal here is to seperate the movie class from the actor class
RSpec.describe Movie2 do
  let(:stuntman) { 
    return double("Mr. Danger", 
      #mimic-ing the real methods here. there are all 'fake' or mock methods
      a2_method: 'Any string at all', 
      )}
  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expects an actor to do 1 actions' do

      expect(stuntman).to receive(:a2_method)
      subject.m2_method
    end
  end
end