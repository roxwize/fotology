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
require "test_helper"

class FotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
