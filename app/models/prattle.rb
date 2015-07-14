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

class Prattle < ActiveRecord::Base
  belongs_to :user

  validates :content, length: { maximum: 80 }
end
