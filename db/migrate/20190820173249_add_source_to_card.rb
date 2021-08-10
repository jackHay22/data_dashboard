class AddSourceToCard < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :source_name, :string, default: "Source"
  end
end
