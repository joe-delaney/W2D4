class Board

    def self.build_stacks(num)
        grid = Array.new(num) {Array.new}
        grid
    end

    attr_reader :max_height

    def initialize(num, max_height)
        raise 'rows and cols must be >= 4' if num < 4 || max_height < 4
        @max_height = max_height
        @stacks = Board.build_stacks(num)
    end

    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @stacks.each { |stack| p stack }
    end

    def add(token, idx)
        if @stacks[idx].length < max_height
            @stacks[idx] << token
            return true
        else
            return false
        end
    end

    def vertical_winner?(token)
        @stacks.each do |stack|
            count = 0
            stack.each {|t| count += 1 if t == token}
            return true if count == max_height
        end
        return false
    end

    def horizontal_winner?(token)
        (0...@stacks[0].length).each do |i|
            column = []
            (0...@stacks.length).each do |j|
                column << @stacks[j][i] if @stacks[j][i] == token
            end
            return true if column.all? {|t| t == token} && column.length == @stacks.length
        end
        return false
    end

    def winner?(token)
        vertical_winner?(token) || horizontal_winner?(token)
    end
end
