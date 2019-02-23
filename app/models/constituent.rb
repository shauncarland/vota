class Constituent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :districts
  # has_many :districts, through: :constituent_district_memberships
  # has_many :constituent_district_memberships
end
