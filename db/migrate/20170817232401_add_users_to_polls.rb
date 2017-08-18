class AddUsersToPolls < ActiveRecord::Migration[5.1]
  def change
    add_column :polls, :user_id, :integer
    add_column :questions, :poll_id, :integer
    add_column :responses, :answer_choice_id, :integer
    add_column :responses, :user_id, :integer
    add_column :answer_choices, :question_id, :integer
  end
end
