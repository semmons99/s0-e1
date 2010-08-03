require 'dominion/cards/treasure_cards/treasure_card_base'

module Dominion
  module Cards
    class Copper < Dominion::Cards::TreasureCardBase
      def name
        "Copper"
      end

      def cost
        0
      end

      def value
        1
      end
    end
  end
end
