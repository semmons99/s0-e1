require 'dominion/cards/actions/action_base'

module Dominion
  module Cards
    class Moat < Dominion::Cards::ActionBase
      def setup
        super
        @cost    = 2
        @cards   = 2
        @subtype = :action_reaction
        @description = "If another player plays an attack card, you may reveal this card from your hand. If you do, you are unaffected by the attack."
      end
    end
  end
end
