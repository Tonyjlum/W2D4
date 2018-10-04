require "byebug"

def first_anagram?(word = "dog", word2 = "god")
  anagram = []
  start_time = Time.now
  array = word.chars
  per = array.permutation.to_a
  per.each do |per|
    if per.join("") == word2
      end_time = Time.now
      p (end_time - start_time)*1000
      return true
    end
  end
  end_time = Time.now
  p (end_time - start_time)*1000
  false
end

def second_anagram?(word1 = "dog", word2 = "god")
  array = word2.chars
  start_time = Time.now
  word1.each_char do |char|
    if array.include?(char)
      array.delete_at(array.find_index(char))
    end
  end
  end_time = Time.now
  p (end_time - start_time)*1000
  array.empty?
end

def third_anagram?(word1 = "dog", word2 = "god")
  start_time = Time.now
  word1.chars.sort.join("") == word2.chars.sort.join(" ")

  end_time = Time.now
  p (end_time - start_time)*1000
end

def fourth_anagram?(word1 = "dog", word2 = "god")
  start_time = Time.now
  word_hash1 = Hash.new { |hash, key| hash[key] = 0 }
  word_hash2 = Hash.new { |hash, key| hash[key] = 0 }

  word1.each_char{ |ch| word_hash1[ch] += 1 }
  word2.each_char{ |ch| word_hash2[ch] += 1 }

  word_hash1 == word_hash2
  end_time = Time.now
  p (end_time - start_time)*1000
end

def fifth_anagram?(word1 = "dog", word2 = "god")
  start_time = Time.now
  word_hash1 = Hash.new { |hash, key| hash[key] = 0 }
  word1.each_char{ |ch| word_hash1[ch] += 1 }

  word2_arr = word2.chars
  word2_arr.each{ |el| word_hash1[el] -= 1 }

  word_hash1.all? {|key, val| val == 0}
  end_time = Time.now
  p (end_time - start_time)*1000
end

first_anagram?
second_anagram?
third_anagram?
fourth_anagram?
fifth_anagram?
