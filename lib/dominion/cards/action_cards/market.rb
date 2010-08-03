require 'dominion/cards/action_cards/action_base'

module Dominion
  module Cards
    class Market < Dominion::Cards::ActionBase
      def name
        "Market"
      end

      def cost
        5
      end

      def number_of_additional_actions
        1
      end

      def number_of_additional_buys
        1
      end

      def number_of_additional_cards
        1
      end

      def number_of_additional_gold
        1
      end
    end
  end
end
