class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.boolean :is_completed, default: false
      t.datetime :due_date
      t.datetime :start_at
      t.datetime :finish_at
      
      t.timestamps
    end
  end
end
