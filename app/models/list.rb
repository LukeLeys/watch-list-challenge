class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks


  validates :name, presence: true, allow_blank: false, uniqueness: true
  end


# class Bookmark < ApplicationRecord
#   belongs_to :movies
#   belongs_to :lists

# end

# class CreateBookmarksTable < ActiveRecord::Migration[6.0]
#   def change
#     create_table :bookmarks do |t|
#       t.string :comment
#       t.timestamps
#       t.references :movie, null: false, foreign_key: true
#       t.references :list, null: false, foreign_key: true
#     end
#   end
# end
