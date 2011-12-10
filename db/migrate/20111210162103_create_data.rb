class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.string :strain
      t.string :notes
      t.datetime :spotdate
      t.integer :rating

      t.timestamps
    end
  end
end
