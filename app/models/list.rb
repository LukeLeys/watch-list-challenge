class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :title, presence: true, uniqueness: true, allow_blank: false
end
