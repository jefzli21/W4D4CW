
class Array

    def uniq
        hash = Hash.new(0)
        self.each do |el|
            hash[el] += 1
        end
        return hash.keys

    
    end

    def two_sum
        zeros = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                zeros << [i,j] if self[i] + self[j] == 0
            end
        end
        zeros
    end

   
end
 #will transpose the matrix
 def my_transpose(matrix)
    new_arr = []
    (0...matrix.length).each do |i|
        temp = []
        (0...matrix.length).each do |j|
            temp << matrix[j][i]
        end
        new_arr << temp
    end
    new_arr
end
#[day 0 price, day 1 price, .....day n price]
#buy on the lowest possible day, and sell on the highest possible day
#we cannot sell until we buy [11, 1000, 10, 100]
def stock_picker(prices)
    max = 0
    days = []
    (0...prices.length).each do |idx1|
        (idx1+1...prices.length).each do |idx2|
            if prices[idx2] - prices[idx1] > max
                max = prices[idx2] - prices[idx1] 
                days = [idx1, idx2]
            end
        end
    end
    days
end

class Hanoi

    attr_accessor :first, :mid, :last
    
    def initialize
        @first = [3, 2, 1]
        @mid = []
        @last = []
    end

    def get_input
        while !won?
            puts 'Enter which stack you want to move from (1 , 2 , 3)'
            stack_from = gets.chomp.to_i 
            puts 'Enter which stack you want to move to (1 , 2 , 3)'
            stack_to = gets.chomp.to_i
            if stack_from == stack_to
                raise "Invalid move"
            end
            move(stack_from, stack_to)
            p @first
            puts
            p @mid
            puts
            p @last

        end
        puts "You Wont the game"
    end

    def move(stack_from, stack_to)
        case stack_from
        when 1 
            current_stack = @first
        when 2
            current_stack = @mid
        when 3
            current_stack = @last
        end

        case stack_to 
        when 1 
            final_stack = @first
        when 2
            final_stack = @mid
        when 3
            final_stack = @last
        end

        if self.valid_move?(current_stack, final_stack)
            final_stack << current_stack.pop
            final_stack
        else
            puts "Muahahaha not valid, try again: "
        end
        final_stack
    end


    def won?
        @last == [3,2,1]
    end

    def valid_move?(stack1, stack2)
        current_stack = stack1.dup
        final_stack = stack2.dup
        final_stack << current_stack.pop
        final_stack == final_stack.sort.reverse
    end


    
    
    
end
