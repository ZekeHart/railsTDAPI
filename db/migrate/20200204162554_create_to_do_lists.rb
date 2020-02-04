class CreateToDoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :to_do_lists do |t|

      t.timestamps
    end
  end
end
