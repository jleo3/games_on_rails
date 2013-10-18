require 'spec_helper'

describe WelcomeController do
  describe "GET 'index'" do
    it "should be successul" do
      get 'index'

      response.should be_success
    end
  end
end
