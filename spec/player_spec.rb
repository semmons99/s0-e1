require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'dominion/player'

describe "Player" do
  before(:each) do
    @game = mock("Dominion::Game")
    @deck = []
    7.times{@deck << mock("Dominion::Cards::Copper")}
    3.times{@deck << mock("Dominion::Cards::Estate")}

    @player = Dominion::Player.new(@game, @deck)
  end

  describe "#new" do
    it "should store @game" do
      @player.instance_variable_get(:@game).should == @game
    end

    it "should store @deck" do
      @player.instance_variable_get(:@deck).should == @deck
    end

    it "should create @hand" do
      @player.instance_variable_get(:@hand).should == []
    end

    it "should create @discarded" do
      @player.instance_variable_get(:@discarded).should == []
    end
  end

  describe "#deck" do
    it "should return @deck" do
      @player.deck.should == @player.instance_variable_get(:@deck)
    end
  end

  describe "#hand" do
    it "should return @hand" do
      @player.hand.should == @player.instance_variable_get(:@hand)
    end
  end

  describe "#discarded" do
    it "should return @discarded" do
      @player.discarded.should == @player.instance_variable_get(:@discarded)
    end
  end

  describe "#shuffle" do
    it "should shuffle the deck and discard piles together" do
      deck      = @player.deck[0..-2]
      discarded = @player.deck[-1,1]

      @player.instance_variable_set(:@deck, deck)
      @player.instance_variable_set(:@discarded, discarded)

      new_deck = @player.shuffle
      new_deck.length.should == deck.length + discarded.length
      deck.each{|c| new_deck.should include c}
      discarded.each{|c| new_deck.should include c}
    end
  end

  describe "#draw" do
    it "should return 1 card from the deck when not given an amount" do
      @player.draw.length.should == 1
    end

    it "should return n cards from the deck when given an amount" do
      @player.draw(2).length.should == 2
    end

    it "should shuffle discarded into deck if not enough cards to draw" do
      deck = @player.deck[0..2]
      discarded = @player.deck[3..-1]

      @player.instance_variable_set(:@deck, deck)
      @player.instance_variable_set(:@discarded, discarded)

      @player.draw(5).length.should == 5
    end

    it "should throw an error is more cards are requested than available" do
      lambda{@player.draw(11)}.should raise_exception
    end
  end

  describe "#discard" do
    it "shouldn't do anything if hand is empty" do
      @player.discard
      @player.hand.length.should      == 0
      @player.discarded.length.should == 0
      @player.deck.length.should      == 10
    end

    it "should discard a random card if one is not specified" do
      @player.draw(5)
      @player.discard
      @player.hand.length.should == 4
      @player.discarded.length.should == 1
    end

    it "should discard the specified card" do
      @player.draw(5)
      card = @player.hand.first
      @player.discard(card)
      @player.hand.should_not include card
      @player.discarded.should include card
    end
  end
end
