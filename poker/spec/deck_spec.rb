require "deck.rb"


describe Deck do
    # deck1 = Deck.new
    subject(:deck1) {Deck.new}
    
    describe "#initialize" do
        context "should set variables with getter" do
            it "should set @cards to []" do
                expect(deck1.cards).to eq([])
            end
        end
    end

    describe "#popuplate" do
        context "should populate @cards" do
            it "should contain 52 unique cards" do
                deck1.populate
                expect(deck1.cards.length).to eq(52)
                expect(deck1.cards).to eq(deck1.cards.uniq)
            end
        end
    end
end