require "tdd.rb"


describe Array do 
    arr = [1,2,1,3,3]
    arr2 = [-1,0,2,-2,1]
    describe "#uniq" do
        context 'return new array with uniq element' do
            it 'removes duplicates' do
                expect(arr.uniq).to eq([1,2,3])
                
            end
        end
    end 

    describe '#two_sum' do 
        context 'checks for two_sum' do
            it 'return empty array if no zero sums' do
                expect(arr.two_sum).to eq([])
            end

            it 'return 2D arrays containing indicies of values sums to zero' do
                expect(arr2.two_sum).to eq([[0,4],[2,3]])
            end 
        end
    end
end

describe '#my_transpose' do 
    matrix = [[]]
    context 'Given a matrix, return its transposed self' do
        it "should transpose the rows and columns of the matrix" do

        end
    end


end