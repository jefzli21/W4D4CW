require_relative "card.rb"

class Deck
    attr_reader :cards
    def initialize
        @cards = []
        # populate
    end
    
    def populate
        values = (2..14).to_a
        types = [:spade, :heart, :club, :diamond]
        types.each do |type|
            values.each do |val|
                @cards << Card.new(type,val)
            end
        end
        @cards.shuffle
    end
    
end