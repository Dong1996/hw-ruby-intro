# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.length == 0
    arr = 0
  elsif arr.length == 1
    arr = arr[0]
  else
    arr = arr.sort
    arr = arr[arr.length-1] + arr[arr.length-2]
  end
end

def sum_to_n? arr, n
  for i in 0..arr.length-1 do
    for j in i+1..arr.length-1 do
      s = arr[i] + arr[j]
      if s == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  elsif s =~ /^[aeiou]/i
    return false
  elsif s =~ /\W/
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  elsif s !~ /\D/ and s !~ /[23456789]/ and s.to_i(2) % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
