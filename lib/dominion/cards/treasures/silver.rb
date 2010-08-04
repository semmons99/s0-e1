require 'dominion/cards/treasures/treasure_card_base'

module Dominion
  module Cards
    class Silver < Dominion::Cards::TreasureCardBase
      attr_reader :name, :cost, :value

      def setup
        super
        @cost  = 3
        @value = 2
      end
    end
  end
end
