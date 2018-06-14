class ChangePrimaryAndSecondaryInBrainConnections < ActiveRecord::Migration[5.1]
  def change
    rename_column :brain_connections, :primary_brain_area, :primary_brain_area_id
    rename_column :brain_connections, :secondary_brain_area, :secondary_brain_area_id
  end
end
