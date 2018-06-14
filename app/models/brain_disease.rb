class BrainDisease < ApplicationRecord
  belongs_to :brain_area
  belongs_to :disease
end
