class Post < ApplicationRecord
  validates :headline, presence: true
  validates :text, presence: true
end
