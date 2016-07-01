
# ===== Debug_01 =====
list = {'yvr' => 'Vancouver', 'yba' => 'Banff', 'yyz' => 'Toronto', 'yxx' => 'Abbotsford', 'ybw' => 'Calgary'}

# Why is it returning nil instead of first element of the list above
p list[0]



# ==== Debug_02 =====
def average(numbers)
  sum = 0
  numbers.each do |num|
    sum += num
  end
  sum / numbers.size
end

## TEST HELPER METHOD
def test_average(array)
  print "avg of #{array.inspect}:"
  result = average(array)
  p result
end

## TEST CODE
test_average([4,5,6]) # => 5
test_average([15,5,10]) # => 10

# Should treat string like number
test_average([15,'5',10]) # => 10

# Should show decimal value
test_average([10, 5]) # => 7.5 instead of just 7

# Watch out! Even tests can have bugs!
test_average(9, 5, 7)

# Empty set should return nil, not throw an error
test_average([]) # => nil

# Non-existent set should return nil
test_average() # => nil

# BONUS: Should ignore nils in the set
test_average([9,6,nil,3]) # => 6



# ==== Debug_03 =====
def sum(list)
  list.each do |ele|
    sum = 0
    sum += ele
  end
  sum
end

list1 = [16,21,31,42,55]

# 1. The following should return 165 instead of an error
puts sum(list1)

# 2. How would you refactor it using an enumerable method other than each? Examples of enumerables: map, select, inject, reject, detect.



# ==== Debug_04 =====

def char_count(list)
  letters = {}
  list.each do |word|
    word.split('').each { |letter| letters[letter] += 1 }
  end
  letters
end

# Why the long face(error)? 
# 1. This should return count of each letter in the list
# ex: { "a" => 4, "p" => 3, "l" => 1  ...}

puts char_count(['apples', 'oranges', 'hipsters', 'are', 'same'])


# 2. What are the improvements you can do to above code?



# ==== Debug_05 =====

def method1
  method2
end

def method2
  method3
end

def method3(a)
  puts a
end

method1