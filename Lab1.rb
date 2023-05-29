# Create Phone Number 

def create_phone_number(numbers)
    "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"
end


#You're a square!

def is_square(x)
    if x < 0
      return false
    end

    root = Math.sqrt(x)
  
    if root.to_i ** 2 == x
      return true
    else
      return false
    end
end



# Categorize New Member

def open_or_senior(data)
    result = []
  data.each do |age, handicap|
    if age >= 55 && handicap > 7
      result << "Senior"
    else
      result << "Open"
    end
  end
  return result
end


# Highest and Lowest

def high_and_low(numbers)
  nums = numbers.split.map(&:to_i)
  highest = nums.max
  lowest = nums.min
  return "#{highest} #{lowest}"
end


# Two to One

def longest(a1, a2)
    (a1+a2).chars.uniq.sort.join
end