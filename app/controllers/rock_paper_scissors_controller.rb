class RockPaperScissorsController < ApplicationController
  def new
    @throws = %w(rock paper scissors)
  end
end
