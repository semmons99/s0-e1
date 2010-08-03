require 'dominion/cards/treasure_cards/treasure_card_base'

module Dominion
  module Cards
    class Silver < Dominion::Cards::TreasureCardBase
      def name
        "Silver"
      end

      def cost
        3
      end

      def value
        2
      end
    end
  end
end
