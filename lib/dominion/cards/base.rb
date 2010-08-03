module Dominion
  module Cards
    class Base
      def name
        raise NotImplementedError, "#name must be implemented"
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
