# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Poll < ApplicationRecord
  validates :title, presence: true

  has_many :questions,
    class_name: :Question,
    foreign_key: :question_id,
    primary_key: :id

    belongs_to :User,
    primary_key: :id,
    foreign_key: :user_id
end
