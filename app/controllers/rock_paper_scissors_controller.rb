class RockPaperScissorsController < ApplicationController
  def new
    @throws = get_throws
  end

  def show
    @throws = get_throws
    @user_throw = @throws[params[:id].to_i]
    @game_throw = @throws[rand(3)]
  end

  private

  def get_throws
    %w(rock paper scissors)
  end
end
