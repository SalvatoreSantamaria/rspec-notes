RSpec.describe 25 do
  it 'can test for multiple matchers' do
    # expect(subject).to be_odd
    # expect(subject).to be > 20

    expect(subject).to be_odd.and be > 20 #and chained so that both are checked. more ands can be channed
  end

  #one liner
  it { is_expected.to be_odd and be > 20}

end


#add
RSpec.describe 'caterpillar' do
  it 'supports multiple matchers' do
    expect(subject).to start_with('cat').and end_with('pillar')
  end

  it { is_expected.to start_with('cat').and end_with('pillar') }
end

#or
RSpec.describe [:usa, :canada, :mexico] do
  it 'can check for several possibilities' do
    expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
  end
end
