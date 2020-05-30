

RSpec.describe do
  before(:context) do
      puts 'Outer Before Context Runs Once for the whole desribe block'
  end

  before(:example) do
      puts 'Outer Before Example runs'
  end

  it 'does basic math a' do 
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'Inner Before Context runs before the inner context block'
    end

    before(:example) do
      puts 'Runs the outer example first on each! Then, Inner Before Example runs before each inner example'
    end

    it 'does basic math b' do 
      expect(1 + 2).to eq(3)
    end

    it 'does basic math c' do 
      expect(1 + 3).to eq(4)
    end

  end

end
