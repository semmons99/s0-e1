require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Gardens < Dominion::Cards::VictoryPointBase
      def name
        "Gardens"
      end

      def cost
        4
      end

      # TODO: implement #value
      #   (deck.length / 10).floor
    end
  end
end
