class Story < ApplicationRecord
  belongs_to :user
  belongs_to :community
  has_many :storycomments, dependent: :destroy
end
