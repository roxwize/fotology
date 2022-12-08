class Foto < ApplicationRecord
  validates :url, presence: true
  validates :desc, length: { maximum: 50 }
end
