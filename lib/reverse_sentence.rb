# A method to reverse the words in a sentence, in place.
require 'pry'

def reverse_sentence(my_sentence)

  return my_sentence if my_sentence.nil?

  my_sentence_copy = []
  index = 0
  while index < my_sentence.length
    my_sentence_copy << my_sentence[index]

    index += 1
  end

  top = my_sentence.length - 1
  bottom = 0
  current_word = ""
  spacing = ""

  while top >= 0

    if top == 0
      current_word = my_sentence_copy[top] + current_word
      my_sentence[bottom..(bottom + current_word.length)] = current_word
    elsif my_sentence_copy[top] != " "
      current_word = my_sentence_copy[top] + current_word
    elsif my_sentence_copy[top] == " "
      spacing = " "
      my_sentence[bottom..(bottom + current_word.length)] = current_word + spacing
      bottom += current_word.length + spacing.length
      current_word = ""
    end

    top -= 1
  end

  return my_sentence
end
