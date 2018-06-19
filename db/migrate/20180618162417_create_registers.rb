class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.integer :roll
      t.string :name
      t.string :grade, limit: 1
      t.integer :std

      t.timestamps
    end
    add_index :registers, :roll, unique: true
  end
end
