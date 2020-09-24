module Anagrams
  def self.find(word, list)
    word.chars.permutation.map(&:join).map do |w|
      w if list.include?(w)
    end
  end
end
