class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_many :reviews


  validates :name, presence: true, allow_blank: false, uniqueness: true
  end
