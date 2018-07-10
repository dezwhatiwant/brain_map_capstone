class BrainConnection < ApplicationRecord
  belongs_to :primary_brain_area, class_name: "BrainArea"
  belongs_to :secondary_brain_area, class_name: "BrainArea"
  
end
