# frozen_string_literal: true

# Part 1

def sum(arr)
  
  arr.sum()

end

def max_2_sum(arr)
  
  arr_max_sum = arr.max_by(2){|num| num}
  arr_max_sum.sum
  
end

def sum_to_n?(arr, number)
  
  hash = Hash.new()
  
  (0..arr.length-1).each do |i|
    return true if hash.key?(number-arr[i])
    hash.store(arr[i],i)
  end
  
  return false
  
end

# Part 2

def hello(name)
  
  return "Hello, #{name}"
  
end

def starts_with_consonant?(string)
  
  return  string =~ /\A(?=[^aeiou])(?=[a-z])/i 
  
end

def binary_multiple_of_4?(string)
  
  return true if string ==  "0"
  return string.match(/^[01]*00$/) != nil
  
end

# Part 3

# Object representing a book
class BookInStock
  
	attr_accessor :isbn
	attr_accessor :price
	
  def initialize(isbn, price)
    
    if isbn.length == 0  or price <= 0
      raise ArgumentError.new("Wrong arguments")
    end
			
		@isbn = isbn
		@price = price
		
  end
	
	def price_as_string
	  
	  return "$%0.2f" % [price]
	  
	end  
  
end
