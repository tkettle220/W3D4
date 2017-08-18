# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :responses,
    class_name: :Response,
    foreign_key: :response_id,
    primary_key: :id

    has_many :polls,
      class_name: :Poll,
      foreign_key: :poll_id,
      primary_key: :id

    has_many :answer_choices,
      through: :response,
      source: :answer_choice

    has_many :questions,
    through: :answer_choice,
    source: :question

end
