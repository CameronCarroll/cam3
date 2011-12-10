class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.datetime :due

      t.timestamps
    end
  end
end
