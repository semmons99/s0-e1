require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Gardens < Dominion::Cards::VictoryPointBase
      attr_reader :name, :cost

      def setup
        super
        @cost  = 4
      end

      def value
        (@owner.deck.length / 10).floor
      end
    end
  end
end
