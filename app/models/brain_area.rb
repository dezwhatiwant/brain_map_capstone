class BrainArea < ApplicationRecord
  has_many :articles
  has_many :brain_diseases
  has_many :diseases, through: :brain_diseases
  has_many :primary_brain_connections, foreign_key: "primary_brain_area_id", class_name: "BrainConnection"
  has_many :secondary_brain_connections, foreign_key: "secondary_brain_area_id", class_name: "BrainConnection"
  has_many :seconary_brain_areas, through: :primary_brain_connections, source: :secondary_brain_area
  has_many :primary_brain_areas, through: :second_brain_connections, source: :primary_brain_area

  def brain_areas
    primary_brain_areas + secondary_brain_areas
  end
end
 