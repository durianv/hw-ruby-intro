# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #TEST > rspec -e '#sum ' spec/part1_spec.rb
  result = 0
  arr.each { |a| result += a}
  result
end

def max_2_sum arr
  #TEST > rspec -e '#max_2_sum' spec/part1_spec.rb
  result = 0
  
  if arr.length == 0
    return result
  end
  
  if arr.length == 1
    result = arr[0]
    return result
  end
  
  a = arr.sort {|x,y| y <=> x}
  result = a[0] + a[1]
  
end

def sum_to_n? arr, n
  
  result = false
  if arr.length == 0 || arr.length == 1
    return result
  end
  
  arr.combination(2).any? {|a,b| a + b == n}
  
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  result = "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  result = s.capitalize.start_with?(/[B-DF-HJ-NP-TV-Z]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if /\A[0-1]+\Z/.match?(s) == false
    return false
  end
  
  result = s.to_i(2) % 4 == 0
  
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    #raise ArgumentError, 'Argument is not a non-empty string' unless isbn.is_a? String && isbn.length > 0
    @isbn = isbn
    #raise ArgumentError, 'Argument is not a floating point number greater than zero' unless price.is_a? Float && price > 0
    @price = price
  end

end
