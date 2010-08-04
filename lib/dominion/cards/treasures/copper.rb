require 'dominion/cards/treasures/treasure_card_base'

module Dominion
  module Cards
    class Copper < Dominion::Cards::TreasureCardBase
      attr_reader :name, :cost, :value

      def setup
        super
        @cost  = 0
        @value = 1
      end
    end
  end
end
