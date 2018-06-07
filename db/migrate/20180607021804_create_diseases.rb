class CreateDiseases < ActiveRecord::Migration[5.1]
  def change
    create_table :diseases do |t|
      t.string :name
      t.text :symptoms
      t.text :description

      t.timestamps
    end
  end
end
