require 'dominion/cards/action_cards/action_base'

module Dominion
  module Cards
    class Cellar < Dominion::Cards::ActionBase
      def setup
        super
        @cost    = 2
        @actions = 1
        @description = "Discard any number of cards from your hand. Draw one card for each card discarded in this way."
      end

      def special_action
        n = game.ask('how many card to discard?')
        owner.hand.discard(n)
        owner.draw(n)
      end
    end
  end
end
