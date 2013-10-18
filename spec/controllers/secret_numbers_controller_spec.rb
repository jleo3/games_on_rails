require 'spec_helper'

describe SecretNumbersController do
  describe "GET 'new'" do
    it "should be successul" do
      get 'new'

      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successul" do
      get 'show', id: 1

      response.should be_success
    end

    it "sets the winner" do
      get 'show', id: 1

      assigns(:chosen_number).should equal(1)
      assigns(:secret_number).should be_between(1, 5)
    end
  end
end
