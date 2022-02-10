# Write a method longest_streak(str) that accepts a 
# string as an arg. The method should return the longest 
# streak of consecutive characters in the string. If there 
# are any ties, return the streak that occurs later in the string.

def longest_streak(str)
    substring = str[0]
    max_substring = str[0]
    current_max = 1
    count = 0
    (0...str.length - 1).each do |i|
        if str[i] == str[i+1]
            count += 1
            if count >= current_max
                substring += str[i+1]
                max_substring = substring
                current_max = count 
            end
        else
            if i + 1 == str.length - 1 && current_max == 1
                return str[-1]
            end
            count = 1
            substring = str[i+1]
        end
    end
    max_substring
end

# Examples
p longest_streak('a')           # => 'a'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzza') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'
p longest_streak('abc')         # => 'c'