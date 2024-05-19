class CreateGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :goals do |t|

      t.references :user, null: false, foreign_key: true
      t.integer :goal_score
      t.datetime :test_date
      t.text :description
      
      t.timestamps
    end
  end
end
