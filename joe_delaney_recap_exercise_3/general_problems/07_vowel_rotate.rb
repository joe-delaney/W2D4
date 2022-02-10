# Write a method vowel_rotate(str) that accepts a string as an arg 
# and returns the string where every vowel is replaced with the 
# vowel that appears before it sequentially in the original string. 
# The first vowel of the string should be replaced with the last vowel.

def vowel_rotate(str)
    vowels = "aeiou"
    vowel_queue = []
    idx_queue = []

    str.each_char.with_index do |char, i| 
        if vowels.include?(char)
            vowel_queue << char 
            idx_queue << i
        end
    end
    idx_queue = idx_queue.rotate(1)
    new_str = str 

    (0...idx_queue.length).each do |i|
        new_str[idx_queue[i]] = vowel_queue[i]
    end
    new_str
end

# Examples
p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges')       # => "erongas"
p vowel_rotate('headphones')    # => "heedphanos"
p vowel_rotate('bootcamp')      # => "baotcomp"
p vowel_rotate('awesome')       # => "ewasemo"
