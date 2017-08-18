# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  answerer_id      :integer          not null
#  answer_id        :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_choice_id :integer
#  user_id          :integer
#

class Response < ApplicationRecord
  validates :user_id, presence: true
  validates :answer_id, presence: true
  validate :not_duplicate_response


  belongs_to :users,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :answer_choices,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice


def not_duplicate_response
  prev_questions = User.find(user_id).questions
  current_question = AnswerChoice.find(answer_choice_id).question
  if prev_questions.include?(current_question)
    errors[:answer_choice_id]<< "already answered this question"
  end

end


end
