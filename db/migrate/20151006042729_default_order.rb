class DefaultOrder < ActiveRecord::Migration[6.1]
  def change
    change_column :graphs, :order, :integer, :default => 10
    change_column :external_graphs, :order, :integer, :default => 10
    change_column :pages, :order, :integer, :default => 10
    change_column :categories, :order, :integer, :default => 10
  end
end
