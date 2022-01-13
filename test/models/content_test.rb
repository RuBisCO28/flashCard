# == Schema Information
#
# Table name: contents
#
#  id         :integer          not null, primary key
#  section    :integer
#  question   :string
#  answer     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "test_helper"

class ContentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
