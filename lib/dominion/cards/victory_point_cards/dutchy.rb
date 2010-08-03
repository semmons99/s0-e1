require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Dutchy < Dominion::Cards::VictoryPointBase
      def name
        "Dutchy"
      end

      def value
        3
      end
    end
  end
end
