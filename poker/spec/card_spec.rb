require "card.rb"

describe Card do
    describe "#initialize" do
    
        context "Should set variables with getters" do 
            spade = Card.new(:spade, 2)
            heart = Card.new(:heart, 2)
            club = Card.new(:club, 2)
            diamond = Card.new(:diamond, 2)

            it "Should set type" do
                expect(spade.type).to eq(:spade)
                expect(heart.type).to eq(:heart)
                expect(club.type).to eq(:club)
                expect(diamond.type).to eq(:diamond)
            end

            it "Should set value" do
                expect(spade.value).to eq(2)
                expect(heart.value).to eq(2)
                expect(club.value).to eq(2)
                expect(diamond.value).to eq(2)
            end
        end
    end
end
