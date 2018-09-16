require 'pry'
def words(string)
  word_count = {}
  string.split.each do |word|
    if word_count.keys.include?(word)
      word_count[word] += 1
    else
      word_count[word] = 1
    end
  end
  return word_count
end
