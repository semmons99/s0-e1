require 'dominion/cards/base'

module Dominion
  module Cards
    class ActionBase < Dominion::Cards::Base
      def type
        :action
      end

      def subtype
        type
      end

      def number_of_additonal_actions
        0
      end

      def number_of_additional_buys
        0
      end

      def number_of_additional_cards
        0
      end

      def number_of_additional_gold
        0
      end

      def special_action
        nil
      end

      def additional_actions?
        number_of_additional_actions > 0
      end

      def additional_buys?
        number_of_additional_buys > 0
      end

      def additional_cards?
        number_of_additional_cards > 0
      end

      def special_action?
        special_action.nil? ? false : true
      end
    end
  end
end

