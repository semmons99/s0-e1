require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Duchy < Dominion::Cards::VictoryPointBase
      attr_reader :name, :cost, :value

      def setup
        super
        @cost  = 5
        @value = 3
      end
    end
  end
end
