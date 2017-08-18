# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll_id    :integer
#

class Question < ApplicationRecord
  validates :body, presence: true

  has_many :answer_choices,
    class_name: :AnswerChoice,
    foreign_key: :answer_choice_id,
    primary_key: :id

    belongs_to :Poll,
    primary_key: :id,
    foreign_key: :poll_id
end
