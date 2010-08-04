require 'dominion/cards/base'

module Dominion
  module Cards
    class ActionBase < Dominion::Cards::Base
      attr_reader :type, :subtype, :actions, :buys, :cards, :gold

      def setup
        @type    = :action
        @subtype = type
        @actions = 0
        @buys    = 0
        @cards   = 0
        @gold    = 0
      end

      def special_action
        nil
      end

      def additional_actions?
        actions > 0
      end

      def additional_buys?
        buys > 0
      end

      def additional_cards?
        cards > 0
      end

      def special_action?
        special_action.nil? ? false : true
      end
    end
  end
end

