ACTIONS        = %w(Cellar Market Militia Moat Remodel Smithy Village Woodcutter Workshop)
TREASURES      = %w(Copper Silver Gold)
VICTORY_POINTS = %w(Estate Duchy Province)

[ACTIONS, TREASURES, VICTORY_POINTS].each do |ns|
  ns.each do |n|
    require "dominion/cards/actions/#{n.downcase}"
  end
end

TREASURES.each do |n|

include Cominions::Cards

module Dominion
  class Cards
    attr_reader :treasures, :actions, :victory_points

    def initialize(game)
      @game           = game
      @actions        = Hash.new{|h,k| h[k] = []} 
      @treasures      = Hash.new{|h,k| h[k] = []} 
      @victory_points = Hash.new{|h,k| h[k] = []}

      ACTIONS.each do |name|
        generate_stack(@game, @actions, name, 10)
      end

      VICTORY_POINTS.each do |name|
        generate_stack(@game, @victory_points, name,
                      (@game.players.length < 3 ? 8 : 12))
      end

      generate_stack(@game, @treasures, "Copper", 53)
      generate_stack(@game, @treasures, "Silver", 40)
      generate_stack(@game, @treasures, "Gold",   30)
    end

    def starting_deck(player)
      hand = []
      7.times{hand << Dominion::Cards::Copper.new(@game, player)}
      3.times{hand << Dominion::Cards::Estate.new(@game, player)}
      hand
    end

    private

    def generate_stack(game, stack, name, num)
      num.times{stack[name] << eval(name).new(game)}
    end
  end
end
