module ApplicationHelper
  def secret_number_winner?(winning_choice, user_choice)
    winning_choice == user_choice
  end

  def rock_paper_scissors_result(user_throw, computer_throw)
    return :tie if user_throw == computer_throw
    beats = {
        "rock" => "scissors",
        "scissors" => "paper",
        "paper" => "rock"
      }

    if beats[user_throw] == computer_throw
      :winner
    else
      :loser
    end
  end
end
