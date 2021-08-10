class AddHeightToExternalGraph < ActiveRecord::Migration[6.1]
  def change
    add_column :external_graphs, :height, :integer, default: 400;
  end
end
