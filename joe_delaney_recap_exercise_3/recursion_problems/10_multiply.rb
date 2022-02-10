# Write a method multiply(a, b) that takes in two numbers 
# and returns their product.

# You must solve this recursively (no loops!)
# You must not use the multiplication (*) operator

def multiply(a, b)
    return 0 if b == 0

    if b > 0
        a + multiply(a, b - 1)
    else
        -(a + multiply(a, (-b) - 1))
    end
end

# Examples
p multiply(3, 5)        # => 15
p multiply(5, 3)        # => 15
p multiply(2, 4)        # => 8
p multiply(0, 10)       # => 0
p multiply(-3, -6)      # => 18
p multiply(3, -6)       # => -18
p multiply(-3, 6)       # => -18