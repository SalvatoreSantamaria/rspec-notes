RSpec.describe 'equality matches' do
    let(:a) {
        return 3.0
    }
    let(:b) {
        return 3
    }

    describe 'eq matcher' do
        it 'tests for value and ignores type' do
            expect(a).to eq(3)
            expect(b).to eq(3)
        end
    end

    describe 'eql matcher' do
        it 'tests for value including same type' do
            expect(a).not_to eql(3)
            expect(b).not_to eql(3.0)
            expect(a).not_to eql(b)
        end
    end

    describe 'equal and the to be matcher (which are the same thing)' do
        let(:c) {[1, 2, 3]}
        let(:d) {[1, 2, 3]}
        let(:e) { c }
        
        it 'tests for value, including the same type, and cares about object identity' do
            expect(c).to equal(e)
            expect(c).to be(e)
            expect(c).not_to be(d)
        end

    end

end