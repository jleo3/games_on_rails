require 'spec_helper'

describe "When I visit the home page" do
  before do
    visit "/"
  end

  it "will let me play secret number" do

    page.should have_content "SECRET NUMBER"
    click_link "secret-number"

    page.should have_content "Welcome to Secret Number!"
  end

  it "will let me play rock, paper, scissors" do
    page.should have_content "ROCK PAPER SCISSORS"
  end

end
