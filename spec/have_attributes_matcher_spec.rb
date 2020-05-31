class ProfessionalWrestler
  attr_reader :name, :finishing_move #accessible via reader methods

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Stone Cold Steve Austin', 'Stunner') do #initialize with name, finishing_move
    it 'checks for object attribute and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin') #subject represents object
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin') }
    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner') } #can check both
  end
end