require 'dominion/cards/base'

module Dominion
  module Cards
    class TreasureCardBase < Dominion::Cards::Base
      def type
        :treasure
      end

      def value
        raise NotImplementedError, "#value must be implemented"
      end
    end
  end
end
