# A method to reverse the words in a sentence, in place.
require 'pry'


def string_reverse(my_string)
  l = my_string.length - 1
  count = 0

  if my_string.length > 2
    return my_string
  else
    while count < l
      letter = my_string[count]
      my_string[count] = my_string[l]
      my_string[l] = letter
      count += 1
      l -= 1
    end
  end
  return my_string
end

def reverse_words(my_words)
 return nil if my_words.nil?
 return my_words if my_words.length == 0 || my_words == 1

 index = 0
 j = index
 while index < my_words.length
   j = index
   while my_words[j] != " " && my_words[j] != nil
     j += 1
   end

   if j != index
     right = index
     left = j - 1
     while right < left
       temp = my_words[right]
       my_words[right] = my_words[left]
       my_words[left] = temp
       right += 1
       left -= 1
     end
   end
    index = j + 1
  end
end


def reverse_sentence(my_sentence)
  if my_sentence == nil || my_sentence.length <= 1
    return my_sentence
  else
    string_reverse(my_sentence)
    reverse_words(my_sentence)
  end
  my_sentence
end
