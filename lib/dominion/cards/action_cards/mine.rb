require 'dominion/cards/action_cards/action_base'

module Dominion
  module Cards
    class Mine < Dominion::Cards::ActionBase
      def setup
        super
        @cost    = 5
      end

      def special_action
        n = owner.hand.discard.cost + 3
        owner.buy(n)
      end
    end
  end
end
