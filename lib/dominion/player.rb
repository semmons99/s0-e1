module Dominion
  class Player
    attr_reader :deck, :hand, :discard

    def initialize(game, deck)
      @game    = game
      @deck    = deck
      @hand    = []
      @discard = []
    end

    def shuffle
      @deck = @deck + @discard
      @deck = @deck.shuffle
    end

    def draw(n)
      n.times do
        shuffle if @deck.length == 0
        @hand += @deck.pop
      end
    end

    def discard(card = nil)
      return if @hand.length == 0
      if card.nil?
        @hand = @hand.shuffle
        @discard += @hand.pop
      else
        @discard += @hand.delete(card)
      end
    end
  end
end
