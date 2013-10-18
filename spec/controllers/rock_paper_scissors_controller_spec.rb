require 'spec_helper'

describe RockPaperScissorsController do
  before do
    @choices = %w(paper rock scissors)
  end

  describe "GET 'new'" do
    it "should be successul" do
      get 'new'

      response.should be_success
      assigns(:throws).should =~ @choices
    end
  end

  describe "GET 'show'" do
    it "should be successul" do
      get 'show', id: "rock"

      response.should be_success
      assigns(:throws).should =~ @choices
      assigns(:user_throw).should eq("rock")
      @choices.should include(assigns(:game_throw))
    end
  end
end
