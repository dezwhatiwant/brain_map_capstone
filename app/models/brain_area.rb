class BrainArea < ApplicationRecord
  has_many :articles
  has_many :brain_diseases
  has_many :diseases, through: :brain_diseases

end
