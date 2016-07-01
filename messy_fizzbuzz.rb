# ==== CLEANED ====

def fizzbuzz(num_1, num_2)
  num_1.upto(num_2) { | i | puts evaluate(i) }
end

def evaluate(num)
  if div_3?(num) && div_5?(num) { "FizzBuzz" }
    elsif div_5?(num) { "Buzz" }
      else num
  end
end

def div_5?(x)
  x % 5 == 0 
end

def div_3?(y) 
  y % 3 == 0 
end

a = 60
b = 80
puts fizzbuzz(a, b)


# ===== MESSY =====
def fb(s, f)
    s.upto(f) { |x|
      puts e(x)
    }
end

  def e(y)
    if div_3?(y) && div_5?(y)
        "FizzBuzz"
      elsif div_5?(y)
        "Buzz"
        elsif div_3?(y)
          "Fizz"
          else
            y
    end
  end

def div_5?(x); x % 5 == 0; end;

def div_3?(x1); x1 % 3 == 0; end;

a = 60
b = 80
fb(a, b)