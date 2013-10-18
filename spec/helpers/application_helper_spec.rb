require 'spec_helper'

describe ApplicationHelper do
  describe "secret_number_winner?" do
    it "will be true when they match" do
      secret_number_winner?(1, 1).should be_true
    end

    it "will be false when they don't match" do
      secret_number_winner?(1, 2).should be_false
    end
  end

  describe "rock_paper_scissors_result" do
    describe ":winner" do
      it "rock beats scissors" do
        rock_paper_scissors_result("rock", "scissors").should eq(:winner)
      end

      it "scissors beats paper" do
        rock_paper_scissors_result("scissors", "paper").should eq(:winner)
      end

      it "paper beats rock" do
        rock_paper_scissors_result("paper", "rock").should eq(:winner)
      end
    end

    describe ":loser" do
      it "rock loses to paper" do
        rock_paper_scissors_result("rock", "paper").should eq(:loser)
      end

      it "scissors loses to rock" do
        rock_paper_scissors_result("scissors", "rock").should eq(:loser)
      end

      it "paper loses to scissors" do
        rock_paper_scissors_result("paper", "scissors").should eq(:loser)
      end
    end

    describe ":tie" do
      it "rock ties rock" do
        rock_paper_scissors_result("rock", "rock").should eq(:tie)
      end
    end
  end
end
