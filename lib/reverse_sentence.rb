# A method to reverse the words in a sentence, in place.
def reverse_words(my_words)
  start = 0
  end_w = 0
  if my_words == nil
    return nil
  end
  while my_words[end_w] != nil
    while my_words[end_w] != ' ' && my_words[end_w] != nil
      end_w+=1
    end

    reverse_start = start
    reverse_end = end_w-1

    while reverse_start < reverse_end
      last = my_words[reverse_end]
      first = my_words[reverse_start]

      my_words[reverse_start] = last
      my_words[reverse_end] = first

      reverse_start+=1
      reverse_end-=1
    end

    start = end_w+1
    end_w+=1
  end

  return my_words
 end




def reverse_sentence(my_sentence)
  index = 0
  length = 0
  if my_sentence == nil
    return nil
  elsif my_sentence[index+1] == nil
    return my_sentence
  end


  while my_sentence[length] != nil
  length+=1
  end

  last_element = length-1
  while index < last_element
    last = my_sentence[last_element]
    first = my_sentence[index]

    my_sentence[index] = last
    my_sentence[last_element] = first
    index+=1
    last_element-=1
  end

  reverse_words(my_sentence)
end
