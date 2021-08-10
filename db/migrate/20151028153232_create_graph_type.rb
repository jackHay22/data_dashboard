class CreateGraphType < ActiveRecord::Migration[6.1]
  def change
    add_column :graphs, :style, :string, default: 'spline'
  end
end
