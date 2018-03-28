# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return if my_sentence.nil? || my_sentence.length == 0
  reverse_words(my_sentence)
  reverse_string(my_sentence.length, 0, my_sentence)
end

def reverse_words(my_words)
  return my_words if my_words == nil || my_words.length < 2
  curr_index = 0
  count = 0
  while curr_index <= my_words.length
    if my_words[curr_index] == " " || my_words[curr_index] == nil
      reverse_string(curr_index, curr_index - count, my_words) if count > 0
      count = 0
    else
      count += 1
    end
    curr_index += 1
  end
  return my_words
end

def reverse_string(string_length, start_index, my_words)
  ((string_length - start_index) / 2).times do |count|
    temp = my_words[start_index + count]
    my_words[start_index + count] = my_words[string_length - count - 1]
    my_words[string_length - count - 1] = temp
  end
end
