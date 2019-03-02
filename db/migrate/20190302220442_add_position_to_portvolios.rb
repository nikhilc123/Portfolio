class AddPositionToPortvolios < ActiveRecord::Migration[5.1]
  def change
    add_column :portvolios, :position, :integer
  end
end
