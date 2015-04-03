def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  sum = 0
  array.each {|i| sum += i}
  sum
end

def multiply(array)
  result = 1
  array.each {|i| result *= i}
  result
end

def power(base, power)
  base ** power
end

def factorial(a)
  result = 1 
  a.downto(1) {|i| result *= i}
  result
end
