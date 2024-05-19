class CreateQuestionTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :question_types do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
