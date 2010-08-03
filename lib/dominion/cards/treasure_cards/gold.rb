require 'dominion/cards/treasure_cards/treasure_card_base'

module Dominion
  module Cards
    class Gold < Dominion::Cards::TreasureCardBase
      def name
        "Gold"
      end

      def cost
        6
      end

      def value
        3
      end
    end
  end
end
