require 'dominion/cards/actions/action_base'

module Dominion
  module Cards
    class Mine < Dominion::Cards::ActionBase
      def setup
        super
        @cost = 5
        @description = "Trash a treasure card from your hand and gain a treasure card up to 3 gold more expensive. Put the new treasure card in your hand."
      end

      def special_action
        n = owner.hand.discard(1, :type => :treasure).value + 3
        owner.buy(n, :type => :treasure)
      end
    end
  end
end
