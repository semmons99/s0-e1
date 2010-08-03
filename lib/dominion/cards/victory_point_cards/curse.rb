require 'dominion/cards/victory_point_cards/victory_point_base'

module Dominion
  module Cards
    class Curse < Dominion::Cards::VictoryPointBase
      attr_reader :name, :cost, :value

      def setup
        super
        @cost  = 1
        @value = -1
      end
    end
  end
end
