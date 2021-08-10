class CreateCategory < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :order
      t.integer :admin_id
      t.timestamps
    end
  end
end
