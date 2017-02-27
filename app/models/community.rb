class Community < ApplicationRecord
  has_many :users
  has_many :stories, dependent: :destroy
end
