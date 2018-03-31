# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence.length <= 1

  reverse_words(my_sentence)
  reverse(my_sentence, 0, my_sentence.length-1)
end

def reverse_words(my_words)
  return my_words if my_words.nil?

  left = 0

  while left < my_words.length
    right = left

    until my_words[right] == " " || right == my_words.length
      right += 1
    end

    reverse(my_words, left, (right - 1))
    left = right + 1
  end
end

def reverse(my_words, first, last)
  while first < last
    temp = my_words[first]
    my_words[first] = my_words[last]
    my_words[last] = temp
    first += 1
    last -= 1
  end
end
