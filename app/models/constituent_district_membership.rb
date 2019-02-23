class ConstituentDistrictMembership < ApplicationRecord
  belongs_to :district
  belongs_to :constituent
end
