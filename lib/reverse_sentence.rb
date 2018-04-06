# A method to reverse the words in a sentence, in place.
require 'pry'
def reverse_sentence(my_sentence) # input: 'Yoda   is    awesome'

  if my_sentence == nil
    return nil
  end

  if my_sentence.length <= 1
    return my_sentence
  end

  #reverse all letters in the sentence
  def reverse_string(string)
    i = 0
    n = string.length - 1

    while i <= n
      temp_value = string[i]
      string[i] = string[n]
      string[n] = temp_value
      i += 1
      n -= 1
    end
    return string
  end
  # find where the whitespace begins to find where each word ends
  # reverse all letters in the word

  # Use the index to look at the value of each letter
  # When the value is equal to white space, you've hit the end of the word
  # Use helper method to reverse words from the starting index to the white space
  reverse_string(my_sentence)
  # puts my_sentence

  i = 0
  n = i
  while i <= my_sentence.length
    # binding.pry
    if my_sentence[i] == " " || i == my_sentence.length
      my_sentence[n...i] = reverse_string(my_sentence[n...i])
      n = i + 1
    end
    i += 1
  end

  # return the sentence

  return my_sentence # output: 'awesome    is   Yoda'
end

  puts reverse_sentence('hello, world')
