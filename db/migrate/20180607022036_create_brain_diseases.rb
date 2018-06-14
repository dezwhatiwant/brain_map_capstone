class CreateBrainDiseases < ActiveRecord::Migration[5.1]
  def change
    create_table :brain_diseases do |t|
      t.integer :brain_area_id
      t.integer :disease_id

      t.timestamps
    end
  end
end
