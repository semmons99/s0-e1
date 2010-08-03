require 'dominion/cards/action_cards/action_base'

module Dominion
  module Cards
    class Militia < Dominion::Cards::ActionBase
      def setup
        super
        @cost    = 4
        @subtype = :action_attack
      end

      def special_action
        game.players.each do |player|
          next if player == owner
          next if player.hand.length <= 3
          player.hand.discard(player.hand.length - 3)
        end
      end
    end
  end
end
