require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Duchy < Dominion::Cards::VictoryPointBase
      def name
        "Duchy"
      end

      def value
        3
      end
    end
  end
end
