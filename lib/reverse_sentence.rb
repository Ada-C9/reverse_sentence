# A method to reverse the words in a sentence, in place.
require "pry"

def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil
  start = 0
  last = my_sentence.length - 1

  while start < last
    value = my_sentence[start]
    my_sentence[start] = my_sentence[last]
    my_sentence[last] = value
    start += 1
    last -= 1
  end

  bottom = 0
  top = 0

  until bottom > (my_sentence.length - 1)
    while my_sentence[bottom] == " "
      bottom +=1
      return my_sentence if bottom == (my_sentence.length)
    end
    word_start = bottom
    wordlength = 0
    word = ""
    until my_sentence[bottom] == " " || my_sentence[bottom] == nil
      bottom += 1
      wordlength += 1
      word << " "
    end

    top = wordlength - 1
    count = 0
    bottom = 0
    until count > (wordlength / 2)
      value = my_sentence[word_start + bottom]
      word[bottom] = my_sentence[word_start + top]
      word[top] = value
      count += 1
      top -= 1
      bottom += 1

    end
    my_sentence[(word_start)..((word_start) + (wordlength - 1))] = word
    bottom = word_start + wordlength
  end
  puts my_sentence

end


my_sentence = " a    b    "
puts reverse_sentence(my_sentence)
