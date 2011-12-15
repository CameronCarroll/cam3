class ChangeDatetimeToDateOnTodos < ActiveRecord::Migration
  def change
    change_table :todos do |t|
      t.change :due, :date
    end
  end
end
