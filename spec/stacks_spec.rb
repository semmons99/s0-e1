require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'dominion/stacks'

describe "Stacks" do
  before(:each) do
    @game    = mock("Dominion::Game")
    @player1 = mock("Dominion::Player")
    @player2 = mock("Dominion::Player")
    @players = [@player1, @player2]

    @game.should_receive(:players).any_number_of_times.and_return(@players)

    @stacks = Dominion::Stacks.new(@game)
  end

  describe "#new" do
    describe "@actions" do
      before(:each) do
        @actions = @stacks.instance_variable_get(:@actions)
      end

      it "should include nine stacks" do
        @actions.length.should == 9
      end

      it "should include all nine specific stacks" do
        @actions.keys.sort.should == ACTIONS.sort
      end

      specify "each stack should have 10 cards" do
        @actions.values.each{|v| v.length.should == 10}
      end

      specify "each stack should have the correct card class" do
        ACTIONS.each do |action|
          @actions[action].first.should be_a eval("Dominion::Cards::#{action}")
        end
      end
    end

    describe "@treasures" do
      before(:each) do
        @treasures = @stacks.instance_variable_get(:@treasures)
      end

      it "should include three stacks" do
        @treasures.length.should == 3
      end

      it "should include all three specific stacks" do
        @treasures.keys.sort.should == TREASURES.sort
      end

      specify "each stack should have the correct number cards" do
        @treasures["Copper"].length.should == 53
        @treasures["Silver"].length.should == 40
        @treasures["Gold"].length.should   == 30
      end

      specify "each stack should have the correct card class" do
        TREASURES.each do |treasure|
          @treasures[treasure].first.should be_a eval("Dominion::Cards::#{treasure}")
        end
      end
    end

    describe "@victory_points" do
      before(:each) do
        @victory_points = @stacks.instance_variable_get(:@victory_points)
      end

      it "should include three stacks" do
        @victory_points.length.should == 3
      end

      it "should include all three specific stacks" do
        @victory_points.keys.sort.should == VICTORY_POINTS.sort
      end

      describe "each stack should the correct number of cards" do
        it "should be 8 with 2 players" do
          game    = mock("Dominion::Game")
          player1 = mock("Dominion::Player")
          player2 = mock("Dominion::Player")
          players = [player1, player2]

          game.should_receive(:players).any_number_of_times.and_return(players)

          stacks = Dominion::Stacks.new(game)
          victory_points = stacks.instance_variable_get(:@victory_points)
          victory_points.values.each{|v| v.length.should == 8}
        end

        it "should be 12 with 3 players" do
          game    = mock("Dominion::Game")
          player1 = mock("Dominion::Player")
          player2 = mock("Dominion::Player")
          player3 = mock("Dominion::Player")
          players = [player1, player2, player3]

          game.should_receive(:players).any_number_of_times.and_return(players)

          stacks = Dominion::Stacks.new(game)
          victory_points = stacks.instance_variable_get(:@victory_points)
          victory_points.values.each{|v| v.length.should == 12}
        end

        it "should be 12 with 4 players" do
          game    = mock("Dominion::Game")
          player1 = mock("Dominion::Player")
          player2 = mock("Dominion::Player")
          player3 = mock("Dominion::Player")
          player4 = mock("Dominion::Player")
          players = [player1, player2, player3, player4]

          game.should_receive(:players).any_number_of_times.and_return(players)

          stacks = Dominion::Stacks.new(game)
          victory_points = stacks.instance_variable_get(:@victory_points)
          victory_points.values.each{|v| v.length.should == 12}
        end
      end

      specify "each stack should have the correct card class" do
        VICTORY_POINTS.each do |treasure|
          @victory_points[treasure].first.should be_a eval("Dominion::Cards::#{treasure}")
        end
      end
    end
  end

  describe "#starting_deck" do
    before(:each) do
      @deck = @stacks.starting_deck(@player1)
    end

    it "should return 10 cards" do
      @deck.length.should == 10
    end

    it "should return 7 Copper cards" do
      coppers = @deck.select{|card| card.is_a?(Dominion::Cards::Copper)}
      coppers.length.should == 7
    end

    it "should return 3 Estate cards" do
      estates = @deck.select{|card| card.is_a?(Dominion::Cards::Estate)}
      estates.length.should == 3
    end
  end
end
