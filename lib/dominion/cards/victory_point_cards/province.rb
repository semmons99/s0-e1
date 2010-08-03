require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Province < Dominion::Cards::VictoryPointBase
      attr_reader :name, :cost, :value

      def setup
        super
        @name  = "Province"
        @cost  = 8
        @value = 6
      end
    end
  end
end
