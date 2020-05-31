RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choc')
      expect(subject).to include('late')
    end

    #how it looks with one liner syntax
    it { is_expected.to include('choc') }
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(30, 20)
    end

    #how it looks with one liner syntax
    it { is_expected.to include(20, 30, 10) }
  end

  #checking hashes
  describe ({ a: 2, b: 4 }) do 
    it 'can check for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
      expect(subject).to include(:b, :a)
    end

    it 'can check for key-value pair' do
      expect(subject).to include(a: 2)
    end
    
 #how it looks with one liner syntax
    it { is_expected.to include(:b) }
    it { is_expected.to include(b: 4) }
  end


end