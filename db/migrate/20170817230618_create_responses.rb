class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer "answerer_id", null: false
      t.integer "answer_id", null: false
      t.timestamps
    end
  end
end
