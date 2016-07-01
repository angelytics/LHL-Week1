# convert arabic numbers to roman numerals

roman_num = { 
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X', 
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

number = 6
container = [] # if "" format then output looks like this: VI
i = 0

roman_num.each do | key, symbol | 
    if (number >= key) 
      p number
      p key
      count = (number / key) 
      p count
      while i < count
	    container.push(symbol)
	    count -= 1 
	  end
	  number = number % key
	  p symbol 
	  p count
	  p number 
	  p key
	  roman_num.each do | key, symbol | 
        if (number >= key) 
 	      count = (number / key) 
          while i < count
	        container.push(symbol)
	        count -= 1 
	      end
	    else
	      nil
	    end	 
	  end   
	  break
    else
      nil
    end
end

p container

=begin

roman_num.each do | key, symbol | 
    if (number >= key) 
      count = (number / key)
      while i < count
	    container.push(symbol)
	    count -= 1 
	  end
	  break
    else
      nil
    end
end

converted = ""

  roman_numerals.each do |number, symbol|
    if num >= number
      count = (num / number).floor
      converted << (symbol * count)
      num = num % number
    end
  end

  converted
end
=end

=begin
  if number % key != 0
    if number % key >= key
      num = number / key
      puts num
      while i < num
	    container.push(symbol)
	    num -= 1 
	  end
	  break
    else
      nil
    end
  end
=end


