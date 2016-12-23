class Group < ApplicationRecord
  belongs_to :user
  has_many :group_relationships
  validates :members, through: :group_relationships, source: :user
end
