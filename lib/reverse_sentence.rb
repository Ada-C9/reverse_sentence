# A method to reverse the words in a sentence, in place.
require "pry"

def reverse_sentence(my_sentence)
  first = 0
  last = my_sentence.length - 1

  while my_sentence[first] == " "
    first += 1
  end
  while my_sentence[last] == " "
    last -= 1
  end
  fcount = 0
  until my_sentence[first] == " " || my_sentence == nil
    fcount += 1
    first += 1
  end
  first_word = my_sentence[(first - fcount)..(first - 1)]

count = 0
  until my_sentence[last] == " " || my_sentence == nil
    count += 1
    last -= 1
  end
  last_word = my_sentence[(last + 1 )..(last + count)]

  my_sentence[(last + 1 )..(last + count)] = first_word

  my_sentence[(first - fcount)..(first - 1)] = last_word

binding.pry
end

sentence = " My name is wini"

print reverse_sentence(sentence)
