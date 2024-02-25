class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :titel
      t.text :details
      t.boolean :completed, default: false

      t.timestamps

      add_column :titel, :details, :completed
    end
  end
end
