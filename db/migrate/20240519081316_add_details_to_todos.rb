class AddDetailsToTodos < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :title, :string
    add_column :todos, :completed, :boolean
  end
end
