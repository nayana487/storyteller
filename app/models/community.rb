class Community < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships
  has_many :stories, dependent: :destroy
end
