require 'dominion/cards/action_cards/action_base'

module Dominion
  module Cards
    class Mine < Dominion::Cards::ActionBase
      def setup
        super
        @cost = 5
        @description = "Trash a treasure card from your hand and gain a treasure card up to 3 gold more expensive. Put the new treasure card in your hand."
      end

      def special_action
        n = owner.hand.discard.cost + 3
        owner.buy(n)
      end
    end
  end
end
