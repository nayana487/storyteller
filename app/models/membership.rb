class Membership < ApplicationRecord
  has_many :users
  has_many :communities
end
