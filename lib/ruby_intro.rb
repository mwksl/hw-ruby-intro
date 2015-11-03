# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr.sort!
  return arr[-1] + arr[-2] if arr.length >= 2
  return arr[0] if arr.length == 1
  return 0 if arr.length == 0 
end

def sum_to_n? arr, n
  return true if !!arr.uniq.combination(2).detect { |a, b| a + b == n }
  return false if (arr.empty? or arr.length == 1)
  return false
end

# Part 2

def hello(name)
  "Hello, " << name 
end

def starts_with_consonant? s
  puts s[0]
  vowel_arr = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  return false if vowel_arr.include? s[0]
  return false if s.empty? or ( not s[0].match(/[a-zA-Z]/) )
  return true
end

def binary_multiple_of_4? s
  return false if not s.match(/^[0-1]+$/)
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price) 
    @price = price
    @isbn  = isbn
    
    if isbn.empty?
      raise ArgumentError.new('isbn cannot be empty')
    end
    
    if price == 0
      raise ArgumentError.new('price cannot be 0')
    end
    
    if price < 0
      raise ArgumentError.new('price cannot be negative')
    end
    
    def price_as_string
      @price = "$" + '%.2f' % price
    end
  end
  

  
end
