module Anagrams
  def self.find(word, list)
    word.chars.permutation.map(&:join).each_with_object([]) do |w, arr|
      arr << w if list.include?(w)
    end
  end
end
