class Manga < ApplicationRecord
    validates :title, presence: true
    has_many :volumes
end
