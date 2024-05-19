class CreateUserLevels < ActiveRecord::Migration[7.1]
  def change
    create_table :user_levels do |t|

      t.references :user, null: false, foreign_key: true
      t.integer :test_score
      t.string :weaknesses
      t.string :strengths
      t.text :weaknesses_description
      t.text :strengths_description
      t.text :level_description

      t.timestamps
    end
  end
end
