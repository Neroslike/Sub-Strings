dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  word.downcase!
  wordHash = Hash.new(0)
  dictionary.each do |element|
    wordHash[element] = (word.scan(/(?=#{element})/).count)
  end
  wordHash.each {|key, value| wordHash.delete(key) if value == 0}
  return wordHash
end
