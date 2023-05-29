# Split Strings

def solution(str)

    pairs = str.chars.each_slice(2).map(&:join)

    if str.length % 2 == 1

       pairs[-1] += "_"

    end

    return pairs
end



# Bit Counting

def count_bits(n)

  binary = n.to_s(2)

  count = binary.count('1')

  return count
end


# Duplicate Encoder

def duplicate_encode(word)

  word = word.downcase
  
  freq = Hash.new(0)

  word.each_char { |c| freq[c] += 1 }

  result = word.chars.map { |c| freq[c] > 1 ? ")" : "(" }
  
  return result.join
end


# Equal Sides Of An Array

def find_even_index(arr)

    (0...arr.length).each do |i|

      left_sum = arr[0...i].sum

      right_sum = arr[i+1..-1].sum
      
      return i if left_sum == right_sum
    end
    
    return -1
end




# Ones and Zeroes

def binary_array_to_number(arr)

  binary_string = arr.join
  
  number = binary_string.to_i(2)
  
  return number
end 





# Simple Pig Latin

def pig_it text
    
  words = text.split
 
  words.map! do |word|

    if word.match(/[a-zA-Z]+/)
      first_letter = word[0]
      rest_of_word = word[1..-1]
      pig_word = "#{rest_of_word}#{first_letter}ay"

    else
      pig_word = word
    end
    
    pig_word
  end
  
  pig_text = words.join(' ')
  
  return pig_text
end