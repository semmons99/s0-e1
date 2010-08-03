require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Estate < Dominion::Cards::VictoryPointBase
      def name
        "Estate"
      end

      def value
        1
      end
    end
  end
end
