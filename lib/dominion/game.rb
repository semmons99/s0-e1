require 'dominion/player'
require 'dominion/cards'

module Dominion
  class Game
    attr_reader :cards, :players, :stacks

    def initialize
      reset
    end

    def reset
      @players = []
      @cards   = Dominion::Cards.new(self)
    end

    def start(number_of_players)
      reset
      number_of_players.times do
        @players << Player.new(self, @cards.starter_deck)
      end
    end
  end
end
