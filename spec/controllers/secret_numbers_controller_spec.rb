require 'spec_helper'

describe SecretNumbersController do
  describe "GET 'new'" do
    it "should be successul" do
      get 'new'

      response.should be_success
    end
  end
end
