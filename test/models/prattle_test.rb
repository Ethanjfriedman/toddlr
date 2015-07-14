# == Schema Information
#
# Table name: prattles
#
#  id         :integer          not null, primary key
#  content    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PrattleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
