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
end
