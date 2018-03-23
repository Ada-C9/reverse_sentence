
require 'pry'

# A method to reverse a string in place.
def string_reverse(my_string)
  origin = my_string.length - 1
  target = 0
  temp = nil
  (my_string.length / 2).times do
    temp = my_string[target]
    my_string[target] = my_string[origin]
    my_string[origin] = temp
    origin -= 1
    target += 1
  end
  return my_string
end

# A method to reverse words in place, without reversing their order.
def reverse_words(my_words)
  index = 0
  word_length = 0
  (my_words.length + 1).times do
    if my_words[index] == " " || index == (my_words.length)
      origin_index = (index - 1)
      target_index = (index - word_length)
      temp_reserv = nil
      (word_length / 2).times do
        temp_reserv = my_words[target_index]
        my_words[target_index] = my_words[origin_index]
        my_words[origin_index] = temp_reserv
        origin_index -= 1
        target_index += 1
      end
      word_length = 0
    else
      word_length +=1
    end
    index += 1
  end
  return my_words
end


# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  if my_sentence == nil || my_sentence.length <= 1
    return my_sentence
  else
    string_reverse(my_sentence)
    reverse_words(my_sentence)
  end
  return my_sentence
end
