RSpec.describe Nmax::Finder do
  let(:input) { StringIO.new('Lorem 1 ipsum 99 dolor 10 sit 8 4 amet 5') }
  let(:numbers_count) { 3 }

  it 'calculate max numbers' do
    expect(described_class.new(input, 3).find).to eq([99, 10, 8])
    expect(described_class.new(input, -3).find).to eq([])
  end
end
