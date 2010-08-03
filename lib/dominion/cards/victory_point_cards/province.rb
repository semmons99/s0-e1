require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Province < Dominion::Cards::VictoryPointBase
      def name
        "Province"
      end

      def value
        6
      end
    end
  end
end
