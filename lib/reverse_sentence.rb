require 'pry'
# my_sentence = "Hello World"
# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
    # raise NotImplementedError
    return my_sentence if my_sentence == nil || my_sentence.length == 0
  #
  #   length = my_sentence.length
  #   i = 0
  #   j = length - 1
  #
  #   while i < j
  #     temp = my_sentence[i]
  #     my_sentence[i] == n
  #     n = temp
  #     i += 1
  #     # find the space and determine what to do with it
  #     # assign the space to a variable introduce j
  #     # while the index is equal to a space
  #   # while my_sentence[i] == " "
  #   #   j = my_sentence[i]
  #   # end
  #       # while the index is less than the length of the word
  #
  #       # assign a new variable to the end of each word
  #       # n = my_sentence[j]-1
  #       # while the index is not equal to j aka the space
  #       # reverse the word
  #       # binding.pry
  #       while my_sentence[i] != j
  #
  #       end
  #       i = j + 1
  #       n -= 1
  #       return my_sentence
  #     end
  #   end
  # # end

  length = my_sentence.length
  new_sentence = " "

  length.times do |word|
    last = word.length
    new_string = ""
    while last > 0
      last -= 1
      new_string += word[last]
    end
    new_sentence << new_string
    my_sentence = new_sentence
    return my_sentence
  end
end
