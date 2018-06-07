class ChangeDescriptionToText < ActiveRecord::Migration[5.1]
  def change
    change_column :brain_areas, :description, :text
  end
end
