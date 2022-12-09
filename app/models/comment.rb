# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  foto_id    :integer
#
class Comment < ApplicationRecord
  belongs_to :foto

  validates :content, length: { maximum: 100, minimum: 5 }
end
