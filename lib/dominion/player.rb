module Dominion
  class Player
    attr_reader :deck, :hand, :discarded

    def initialize(game, deck)
      @game      = game
      @deck      = deck
      @hand      = []
      @discarded = []
    end

    def shuffle
      @deck = @deck + @discarded
      @deck = @deck.shuffle
      @deck
    end

    def draw(n = 1)
      if n > @deck.length + @discarded.length
        raise "more cards requested than available"
      end

      n.times do
        self.shuffle if @deck.length == 0
        @hand << @deck.pop
      end
      @hand
    end

    def discard(card = nil)
      return if @hand.length == 0
      if card.nil?
        @hand = @hand.shuffle
        @discarded << @hand.pop
      else
        @discarded << @hand.delete(card)
      end
      nil
    end
  end
end
