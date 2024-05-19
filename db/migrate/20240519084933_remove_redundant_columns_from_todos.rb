class RemoveRedundantColumnsFromTodos < ActiveRecord::Migration[7.1]
  def change
    remove_column :todos, :title, :string
    remove_column :todos, :completed, :boolean
  end
end



