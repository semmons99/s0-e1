module Dominion
  module Cards
    class Base
      attr_reader :game, :owner, :name, :description

      def initialize(game, owner = nil)
        @game  = game
        @owner = owner
        @name  = self.class
        setup
      end

      def setup
        raise NotImplementedError, "#setup must be implemented"
      end

      def type
        raise NotImplementedError, "#type must be implemented"
      end

      def cost
        raise NotImplementedError, "#cost must be implemented"
      end
    end
  end
end
