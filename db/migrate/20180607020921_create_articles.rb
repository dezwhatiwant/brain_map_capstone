class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :link
      t.integer :brain_area_id

      t.timestamps
    end
  end
end
