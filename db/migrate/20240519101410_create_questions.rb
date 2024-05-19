class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :question_text
      t.references :question_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
