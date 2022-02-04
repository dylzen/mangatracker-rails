class Volume < ApplicationRecord
  belongs_to :manga
  validates :number, :manga_id, presence: true
end
