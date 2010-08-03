require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Curse < Dominion::Cards::VictoryPointBase
      def name
        "Curse"
      end

      def value
        -1
      end
    end
  end
end
