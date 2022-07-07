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
    matrix = [[0,1,2], [3,4,5], [6,7,8]]

    context 'Given a matrix, return its transposed self' do
        it "should transpose the rows and columns of the matrix" do
            expect(my_transpose(matrix)).to eq(matrix.transpose)
        end
    end


end

#[day 0 price, day 1 price, .....day n price]
#buy on the lowest possible day, and sell on the highest possible day
#we cannot sell until we buy [11, 1000, 10, 100]

describe "stock_picker" do 
    context "buy on the lowest possible day, and sell on the highest possible day" do
        it "Should return a pair of days resulting in larges profit" do 
            expect(stock_picker([11, 1000, 10, 100])).to eq([0,1])
            expect(stock_picker([11, 1000, 10, 100,10000,1000000000])).to eq([2,5])
        end
    end
end


describe Hanoi do 
    subject(:tower) {Hanoi.new}
    describe "#initialize" do 
        context 'should set 3 arrays as stacks' do 
            it "should set first stack with 3 pieces from biggest to smallest" do
                expect(tower.first).to eq([3, 2, 1])
                expect(tower.mid).to eq([])
                expect(tower.last).to eq([])
            end
        end
    end
    
    # describe "#get_input" do
    #     context 'gets input from user' do
    #         it 'does not return nil' do
    #             expect(tower.get_input).to_not eq(nil) 
    #         end
    #     end
    # end

    describe "#move" do 
        context 'should move piece from one stack to another' do 
            it 'should return final stack with new piece' do 
                expect(tower.move(1,3)).to eq([1])
                expect(tower.move(1,3)).to eq([1])
                expect(tower.move(1,3)).to eq([1])
                expect(tower.move(1,2)).to eq([2])
                expect(tower.move(3,2)).to eq([2,1])
            end
        end
    end

    describe '#won?' do
        
        it 'should return true when last stack is full' do 
            tower.last = [3,2,1]
            expect(tower.won?).to eq(true)
            
        end
    end

    describe '#valid_move?' do 
    #     context "when valid" do 
    #         it 'should return true' do
    #             expect(tower.valid_move?).to be(true)
    #         end
    #     end

        context "when not valid" do 
            it 'should return false' do
                stack2 = [1]
                stack1 = [3,2]
                expect(tower.valid_move?(stack1,stack2)).to be(false)
            end
        end

    end


end