module ApplicationHelper
  def secret_number_winner?(winning_choice, user_choice)
    winning_choice == user_choice
  end
end
