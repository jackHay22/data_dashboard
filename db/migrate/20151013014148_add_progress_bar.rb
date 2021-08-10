class AddProgressBar < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :percentage_complete, :integer,  default: 0
  end
end
