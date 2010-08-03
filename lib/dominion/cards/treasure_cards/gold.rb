require 'dominion/cards/treasure_cards/treasure_card_base'

module Dominion
  module Cards
    class Gold < Dominion::Cards::TreasureCardBase
      attr_reader :name, :cost, :value

      def setup
        super
        @cost  = 6
        @value = 3
      end
    end
  end
end
