# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password

  has_many :prattles

  validates :username, presence: true
  validates :email, presence: true

  validates :password, length: { minimum: 6 }, allow_nil: true
  validates :password_digest, presence: true
end
