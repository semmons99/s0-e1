require 'dominion/cards/base'

module Dominion
  module Cards
    class VictoryPointBase < Dominion::Cards::Base
      def type
        :victory_point
      end

      def value
        raise NotImplementedError, "#value must be implmeneted"
      end
    end
  end
end
