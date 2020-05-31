RSpec.describe 'a random double' do
  #mock is a emulation example. when testing connected objects, just test the one object and use
  #mocks for the other connected objects

  it 'only allows defined methods to be invoked' do
   # double('mrdanger') # mrdanger is a string / identifier we can use to call the doubled object. its a var
    
    #have to add the methods below 
    # stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true)

    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    #USE THIS!!!!!
    stuntman = double("Mr. Danger")
    #allow stuntman to receive method of fall_of_ladder. if no 'and_return' nil will be returned. 
    #thats what the and_return exists
    allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    expect(stuntman.fall_off_ladder).to eq('Ouch')

    #can do this for multiples
    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)
  end
end