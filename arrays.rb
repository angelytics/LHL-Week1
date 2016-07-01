
def sort(arr)
  switched = true
  loop do
    switched = false
    (arr.length-1).times do |index|
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        switched = true
      end
    end    
    break if not switched
  end
  arr
end

result = sort([5, 3, 2, 6, 1, 4])
puts "Result of sort on array 5 3 2 1 4 is #{result}"

def max(arr)
  switched = true
  container = 0
  
  while (switched)
    switched = false
    (arr.length-1).times do |index|
      if arr[index] > arr[index + 1]
        arr[index + 1] = arr[index]
        container = arr[index]
        switched = true
      end
    end  
  end
  container == 0 ? nil : container
end

result = max([5, 3, 2, 6, 1, 4])
puts "Result of max on array 5 3 2 1 4 is #{result}"

def min(arr)
  switched = true
  container = 0

  while (switched)
    switched = false
    (arr.length-1).times do |index|
      if arr[index] < arr[index + 1]
        arr[index + 1] = arr[index] 
        container = arr[index]
        switch = true
      end
    end
  end
  container == 0 ? nil : container
end

result = min([5, 3, 2, 6, 1, 4])
puts "Result of min on array 5 3 2 1 4 is #{result}"

result = max([])
puts "Result of empty array is #{result.inspect}"

=begin
def sort(arr)
  switch = true;

  while switch do
    switch = false
    (0..arr.length-2).each do |index|
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]
        switch = true;
      end
    end
  end

  arr
end

result = sort([5, 3, 2, 6, 1, 4])
puts "Result of sort on array 5 3 2 1 4 is #{result}"

def max(arr)
  switch = true;
  container = 0

  while switch do
    switch = false
    (0..arr.length-2).each do |index|
      if arr[index] > arr[index + 1]
        arr[index + 1] = arr[index] 
        switch = true;
        container = arr[index]
      end
    end
  end
  container == 0 ? nil : container
end

result = max([5, 3, 2, 6, 1, 4])
puts "Result of max on array 5 3 2 1 4 is #{result}"

def min(arr)
  switch = true;
  container = 0

  while switch do
    switch = false
    (0..arr.length-2).each do |index|
      if arr[index] < arr[index + 1]
        arr[index + 1] = arr[index] 
        switch = true;
        container = arr[index]
      end
    end
  end
  container == 0 ? nil : container
end

result = min([5, 3, 2, 6, 1, 4])
puts "Result of min on array 5 3 2 1 4 is #{result}"

result = max([])
puts "Result of empty array is #{result.inspect}"
 
=end

# a > b ? a : b 
 
=begin

# Find the maximum 
def max(arr)
  arr.max
end

# Find the maximum 
def min(arr)
  arr.min
end

def sort(arr)
  arr.sort
end

def rev(arr)
  arr.sort.reverse
end

def maximum_index(arr)
	m, s = arr.max, arr.size
	(0...s).select { | x | arr[x] == m }
end

# return array index with minimum value
def minimum_index(arr)
	m, s = arr.min,arr.size
	(0...s).select { | x | arr[x] == m }
end

# expect it to return 42 below
result = max([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = min([2, 42, 22, 02])
puts "min of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = sort([2, 42, 22, 02])
puts "sorting of 2, 42, 22, 02 is: #{result}"

# expect it to return 2 below
result = rev([2, 42, 22, 02])
puts "biggest to smallest of 2, 42, 22, 02 is: #{result}"

# expect it to return nil when empty array is passed in
result = max([])
puts "max on empty set is: #{result.inspect}"

puts maximum_index([1, 3, 44, 36, 33, 9])
puts minimum_index([1, 3, 44, 36, 33, 9])

# ====== Original Code =======
# Find the maximum 
def maximum(arr)
  arr.max
end

# expect it to return 42 below
result = maximum([2, 42, 22, 02])
puts "max of 2, 42, 22, 02 is: #{result}"

# expect it to return nil when empty array is passed in
result = maximum([])
puts "max on empty set is: #{result.inspect}"

result = maximum([-23, 0, -3])
puts "max of -23, 0, -3 is: #{result}"

result = maximum([6])
puts "max of just 6 is: #{result}"

=end
