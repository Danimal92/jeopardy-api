class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.text :question
      t.text :user_input
      t.text :actual_answer
      t.integer :money
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
