# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
return my_sentence if my_sentence.nil?

  a = string_reverse(my_sentence)
  b = reverse_words(a)

  return b
end

def string_reverse(my_sentence)
  i = 0
  j = my_sentence.length-1

  while i < j
    a = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = a

    i += 1
    j -= 1
  end
return my_sentence
end

def reverse_words(my_sentence)
  breaks = spaces(my_sentence) #breaks found with helper method

    first = 0
    breaks.each do |space|
      last = space - 1

      while first < last
        a = my_sentence[first]
        my_sentence[first] = my_sentence[last]
        my_sentence[last] = a
        first += 1
        last -= 1
      end
      first = space + 1
    end
  return my_sentence
end

def spaces(my_sentence)
  i = 0
  j = my_sentence.length-1
  spaces = []

  j.times do
    if my_sentence[i] == " "
      spaces << i
    end
    i += 1
    j -= 1
  end

  spaces << my_sentence.length
  return spaces
end
