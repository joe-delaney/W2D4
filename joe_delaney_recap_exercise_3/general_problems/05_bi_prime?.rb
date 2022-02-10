# Write a method bi_prime?(num) that accepts a number 
# as an arg and returns a boolean indicating whether or 
# not the number is a bi-prime. A bi-prime is a positive 
# integer that can be obtained by multiplying two prime 
# numbers.

# For Example:
# 14 is a bi-prime because 2 * 7
# 22 is a bi-prime because 2 * 11
# 25 is a bi-prime because 5 * 5
# 24 is not a bi-prime because no two prime numbers have a product of 24

def bi_prime?(num)
    factors = []
    (1..num).each {|factor| factors << factor if num % factor == 0}
    primes = factors.select {|num| prime?(num)}
    temp = []

    primes.each do |prime|
        target = num / prime
        return true if temp.include?(target) || (prime * prime) == num
        temp << prime
    end
    return false
end

def prime?(num)
    (2...num).each {|factor| return false if num % factor == 0}
    return true
end

# Examples
p bi_prime?(14)   # => true
p bi_prime?(22)   # => true
p bi_prime?(25)   # => true
p bi_prime?(94)   # => true
p bi_prime?(24)   # => false
p bi_prime?(64)   # => false