class CreateBrainAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :brain_areas do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
