require 'spec_helper'

describe RockPaperScissorsController do
  describe "GET 'new'" do
    it "should be successul" do
      get 'new'

      response.should be_success
      assigns(:throws).should include("rock")
      assigns(:throws).should include("paper")
      assigns(:throws).should include("scissors")
    end
  end
end
