require "hand.rb"

describe Hand do 
    let(:deck){double("fake_deck", send_hand: [1,2,3,4,5])}
    describe "#initialize" do 
        it "should set @combo to five cards" do
            allow(deck).to receive(:send_hand).and_return([1,2,3,4,5])
            expect(Hand.new(deck.send_hand).combo.length).to eq(5)
        end
    end
    
    describe "hand_ranks" do
        context "determines the rank of hand" do
            it "determines Royal Flush" do
                expect(hand.hand_ranks(cards)).to eq(1)
            end
            it "determines Straight Flush" do
                expect(hand.hand_ranks(cards)).to eq(2)
            end
            it "determines Four of a Kind" do
                expect(hand.hand_ranks(cards)).to eq(3)
            end
            it "determines Full House" do
                expect(hand.hand_ranks(cards)).to eq(4)
            end
            it "determines Flush" do
                expect(hand.hand_ranks(cards)).to eq(5)
            end
            it "determines Straight" do
                expect(hand.hand_ranks(cards)).to eq(6)
            end
            it "determines Three of a Kind" do
                expect(hand.hand_ranks(cards)).to eq(7)
            end
            it "determines Two Pair" do
                expect(hand.hand_ranks(cards)).to eq(8)
            end
            it "determines Pair" do
                expect(hand.hand_ranks(cards)).to eq(9)
            end

            it "determines High Card" do
                expect(hand.hand_ranks(cards)).to eq(10)
            end
  
        end
    end

end