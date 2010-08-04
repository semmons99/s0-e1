require 'dominion/cards/base'

module Dominion
  module Cards
    class VictoryPointBase < Dominion::Cards::Base
      attr_reader :type

      def setup
        @type = :victory_point
      end

      def value
        raise NotImplementedError, "#value must be implemented"
      end
    end
  end
end
