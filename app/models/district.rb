class District < ApplicationRecord
  has_many :constituent_district_memberships
  has_many :constituents, through: :constituent_district_memberships
  has_many :terms
end
