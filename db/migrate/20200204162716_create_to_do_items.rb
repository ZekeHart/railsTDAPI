class CreateToDoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :to_do_items do |t|
      t.string :name
      t.boolean :completed
      t.string :toDoList

      t.timestamps
    end
  end
end
