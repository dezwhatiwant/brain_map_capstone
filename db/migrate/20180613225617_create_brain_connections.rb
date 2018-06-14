class CreateBrainConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :brain_connections do |t|
      t.string :name
      t.integer :primary_brain_area
      t.integer :secondary_brain_area

      t.timestamps
    end
  end
end
