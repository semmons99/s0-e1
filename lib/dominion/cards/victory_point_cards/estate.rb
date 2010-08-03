require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Estate < Dominion::Cards::VictoryPointBase
      attr_reader :name, :cost, :value

      def setup
        super
        @name  = "Estate"
        @cost  = 2
        @value = 1
      end
    end
  end
end
