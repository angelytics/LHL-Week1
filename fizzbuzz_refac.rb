def fizzbuzz(num1, num2)
  (num1..num2).each do|n|
  fizz = if n % 3 == 0 then 'fizz' end
  buzz = if n % 5 == 0 then 'buzz' end
  puts "#{n} #{fizz}#{buzz}"
  end
end

fizzbuzz(10, 20)

(1..100).each do|n|
  fizz = if n % 3 == 0 then 'fizz' end
  buzz = if n % 5 == 0 then 'buzz' end
  puts "#{n} #{fizz}#{buzz}"
end



=begin
def fizzbuzz(num1, num2)
  times = num2 - num1 +1
  puts times
  process(times)
end

=end

# ==== Proposed Solution 1====


=begin

(1..100).each do|n|
  fizz = if n % 3 == 0 then 'fizz' end
  buzz = if n % 5 == 0 then 'buzz' end
  puts "#{n} #{fizz}#{buzz}"
end

# ==== Proposed Solution 1====

puts "fizzbuzz program 2"
puts (1..100).each{|i|puts i%15==0?'Fizzbuzz':i%3==0?'Fizz':i%5==0?'Buzz':i}


def fizzbuzz(start_num, end_num)

  (start_num..end_num).each do |num|
    fizz = num % 3 == 0 
    buzz = num % 5 == 0
    
    output = ""
    output << "Fizz" if fizz
    output << "Buzz" if buzz
    
    puts output.empty? ? num : output
  end
end

fizzbuzz(10, 20)

=end

=begin WORKS

puts (1..100).map{|i|r=["Fizz"][i%3];r="#{r}Buzz"if i%5==0;r||i}

Don't use it in an interview, you'd probably get the stink-eye... ;)

=end

=begin WORKS

puts (1..100).map{|x|(f=[x%3>0,x%5>0]).inject(:&)?x:"#{f[0]?():'Fizz'}#{f[1]?():'Buzz'}"}

Don't use it in an interview, you'd probably get the stink-eye... ;)

=end

=begin WORKS

puts (1..100).map{|x|"FizzBuzz"[4*(x%3<=>0)..-1+4*(x%5<=>0)].gsub(/^$/,"#{x}")}

Don't use it in an interview, you'd probably get the stink-eye... ;)

=end

=begin WORKS

 (1..100).each do |num|
	message = ""
	message << "fizz" if num%3 == 0
	message << "buzz" if num%5 == 0
	message << num.to_s if message.length == 0
	puts message
  end

=end

=begin DOES NOT WORK

class Array
  def fizzbuzz(x, word)
	n = x
	while x <= self.size
	self[x - 1] = word
	x += n
	end
	self
  end
end
(1..100).to_a.fizzbuzz(3, "Fizz").fizzbuzz(5, "Buzz").fizzbuzz(15, "FizzBuzz")

=end

=begin WORKS

puts (1..100).map {|i|
	f = i % 3 == 0 ? 'Fizz' : nil
	b = i % 5 == 0 ? 'Buzz' : nil
	f || b ? "#{ f }#{ b }" : i
  }

=end



=begin DOES NOT WORK

pattern = [ nil, nil, "Fizz", nil, "Buzz", "Fizz", nil, nil, "Fizz", "Buzz", nil, "Fizz", nil, nil, "FizzBuzz" ]

index = 0

(1..100).each do |num|
  index +=1
  if (pattern.length <= index) then index = 0; end
  
  answer = pattern[index]
    puts answer ? answer : i.to_s
end 

=end