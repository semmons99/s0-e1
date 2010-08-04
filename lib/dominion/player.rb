module Dominion
  class Player
    attr_reader :deck, :hand, :discard

    def initialize(game, deck)
      @game    = game
      @deck    = deck
      @hand    = []
      @discard = []
    end
  end
end
