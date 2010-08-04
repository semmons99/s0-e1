require 'dominion/cards/actions/action_base'

module Dominion
  module Cards
    class Militia < Dominion::Cards::ActionBase
      def setup
        super
        @cost    = 4
        @subtype = :action_attack
        @description = "All other players must discard cards from their hand until they have only 3 remaining. Players with three or fewer cards do not discard any cards."
      end

      def special_action
        @game.players.each do |player|
          next if player == @owner
          next if player.hand.length <= 3
          player.discard(player.hand.length - 3)
        end
      end
    end
  end
end
