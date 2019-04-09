class Representative < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include DeviseTokenAuth::Concerns::User

  has_many :bills
  has_many :terms
  has_one :representative_profile

  delegate :motivations, to: :representative_profile, allow_nil: true
  delegate :priorities, to: :representative_profile, allow_nil: true
end
