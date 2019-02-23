class District < ApplicationRecord
  has_many :constituents, through: :constituent_district_memberships
  has_and_belongs_to_many :districts
end
