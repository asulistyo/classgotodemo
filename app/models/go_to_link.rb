class GoToLink < ApplicationRecord
  validates :url, presence: true
  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true
end
