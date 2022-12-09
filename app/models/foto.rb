# == Schema Information
#
# Table name: fotos
#
#  id         :integer          not null, primary key
#  url        :string           not null
#  desc       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Foto < ApplicationRecord
  has_many :comments

  validates :url, presence: true
  validates :desc, length: { maximum: 50 }
end
