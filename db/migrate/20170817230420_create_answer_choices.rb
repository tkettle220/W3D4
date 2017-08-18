class CreateAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.text "body", null: false
      t.timestamps
    end
  end
end
