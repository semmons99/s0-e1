require 'dominion/cards/action_cards/action_base'

module Dominion
  module Cards
    class Cellar < Dominion::Cards::ActionBase
      def setup
        super
        @cost    = 2
        @actions = 1
      end

      def special_action
        n = game.ask('how many card to discard?')
        owner.hand.discard(n)
        owner.draw(n)
      end
    end
  end
end
