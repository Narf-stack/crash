class List < ApplicationRecord
    validates :name, uniqueness: true
    has_many :bookmarks, dependent: :destroy
    has_many :movies, through: :bookmarks
    has_many :reviews
end
