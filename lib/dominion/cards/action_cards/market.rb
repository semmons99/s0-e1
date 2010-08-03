require 'dominion/cards/action_cards/action_base'

module Dominion
  module Cards
    class Market < Dominion::Cards::ActionBase
      def setup
        super
        @name    = "Market"
        @cost    = 5
        @actions = 1
        @buys    = 1
        @cards   = 1
        @gold    = 1
      end
    end
  end
end
