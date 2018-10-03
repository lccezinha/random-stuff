require_relative '../lib/custom_flatten'

RSpec.describe CustomFlatten do
  describe '#flatten' do
    context 'when argument is not an array' do
      it 'must raise and error' do
        expect { described_class.new('not an array') }
          .to raise_error("Invalid argument, must give an array as argument")
      end
    end

    context 'when receive a non nested array as argument' do
      it 'must flatten [1, 2, 3]' do
        expect(described_class.new([1, 2, 3]).flatten).to eq([1, 2, 3])
      end
    end

    context 'when receive a nested arrays as argument' do
      it 'must flatten [1, 2, 3, 4]' do
        expect(described_class.new([1, 2, [3], 4]).flatten).to eq([1, 2, 3, 4])
      end

      it 'must flatten [1, 2, 3, 4, 5, 6]' do
        expect(described_class.new([1, 2, [3], [[4, 5], 6]]).flatten).to eq([1, 2, 3, 4, 5, 6])
      end
    end
  end
end