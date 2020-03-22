RSpec.describe Nmax::NumbersParser do
  let(:input_data) { 'Lorem 10 times ipsum dolor sit amet9 -233 as 2 '  }
  let(:parser) { described_class.new(input_data) }

  describe '#next_number' do
    it 'return numbers from input stream' do
      expect(parser.parse).to eq([10, 9, 233, 2])
    end
  end
end
