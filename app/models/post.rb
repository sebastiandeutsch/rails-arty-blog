class Post < ApplicationRecord
  validates :headline, presence: true
  validates :text, presence: true

  # 1..1
  # has_one :comment

  # 1..N
  has_many :comments

  # N..M
  # has_and_belongs_to_many :comments
end
