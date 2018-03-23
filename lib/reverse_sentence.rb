# A method to reverse the words in a sentence, in place.
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil?

  reverse(my_sentence, 0, my_sentence.length - 1)

  left = 0

  while left < my_sentence.length
    right = left

    until my_sentence[right] == " " || right == my_sentence.length
      right += 1
    end

    reverse(my_sentence, left, (right - 1))
    left = right + 1
  end
end


def reverse(my_sentence, left, right)
  while left < right
    temp = my_sentence[left]
    my_sentence[left] = my_sentence[right]
    my_sentence[right] = temp
    left += 1
    right -= 1
  end
end
