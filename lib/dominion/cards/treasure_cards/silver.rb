require 'dominion/cards/treasure_cards/treasure_card_base'

module Dominion
  module Cards
    class Silver < Dominion::Cards::TreasureCardBase
      attr_reader :name, :cost, :value

      def setup
        super
        @name  = "Silver"
        @cost  = 3
        @value = 2
      end
    end
  end
end
