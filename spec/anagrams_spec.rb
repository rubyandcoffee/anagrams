require 'anagrams'

RSpec.describe Anagrams do
  subject { Anagrams.find(word, list) }

  let(:word) { 'a' }
  let(:list) { ['a', 'b', 'c', 'd'] }

  describe '.find' do
    let(:expected_result) { ['a'] }

    it 'returns all anagrams of a word from a list' do
      expect(subject).to eql(expected_result)
    end

    context 'double characters' do
      let(:word) { 'ab' }
      let(:list) { ['aa', 'ab', 'ba', 'bb', 'cc', 'ac', 'bc', 'cd'] }
      let(:expected_result) { ['ab', 'ba'] }

      it { is_expected.to eql(expected_result) }
    end
  end
end
