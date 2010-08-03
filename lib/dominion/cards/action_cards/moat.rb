require 'dominion/cards/action_cards/action_base'

module Dominion
  module Cards
    class Moat < Dominion::Cards::ActionBase
      def setup
        super
        @cost    = 2
        @cards   = 2
        @subtype = :action_reaction
      end
    end
  end
end
