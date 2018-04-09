# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence.length < 2

  i = 0
  j = my_sentence.length - 1

  while i < j do
    first = my_sentence[i]
    last = my_sentence[j]

    my_sentence[j] = first
    my_sentence[i] = last

    j -= 1
    i += 1
  end

  return reverse_words(my_sentence)
end

# Helper method
private

def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length < 2

  i = 0
  while i < my_words.length
    index = i

    while my_words[index] != " " && my_words[index] != nil
      index += 1
    end

    unless index == i
      a = i
      b = index - 1

      while a < b
        temp_letter = my_words[a]
        my_words[a] = my_words[b]
        my_words[b] = temp_letter
        a += 1
        b -= 1
      end
    end

    i = index + 1
  end
end
