# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil?

  reverse(my_sentence, 0, my_sentence.length - 1)

  reverse_words(my_sentence)
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

def reverse(my_words, left, right)
  while left < right
    temp = my_words[left]
    my_words[left] = my_words[right]
    my_words[right] = temp
    left += 1
    right -= 1
  end
end
