# == Schema Information
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  body        :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#

class AnswerChoice < ApplicationRecord
  validates :body, presence: true
  has_many :responses,
    class_name: :Response,
    foreign_key: :answer_choice_id,
    primary_key: :id

  belongs_to :question,
    class_name: :Question,
    primary_key: :id,
    foreign_key: :question_id
end
