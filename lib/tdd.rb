
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

    #will transpose the matrix
    def my_transpose(matrix)

    end
end