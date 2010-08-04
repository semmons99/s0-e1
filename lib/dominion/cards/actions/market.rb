require 'dominion/cards/actions/action_base'

module Dominion
  module Cards
    class Market < Dominion::Cards::ActionBase
      def setup
        super
        @cost    = 5
        @actions = 1
        @buys    = 1
        @cards   = 1
        @gold    = 1
      end
    end
  end
end
