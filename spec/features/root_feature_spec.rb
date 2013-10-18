require 'spec_helper'

describe "When I visit the home page" do
  it "will let me play secret number" do
    visit "/"

    page.should have_content "SECRET NUMBER"
    click_link "secret-number"
  end
end
