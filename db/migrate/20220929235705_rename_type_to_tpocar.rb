class RenameTypeToTpocar < ActiveRecord::Migration[7.0]
  def change
    rename_column :vehicles, :type, :tpocar
  end
end
