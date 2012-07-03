# == Schema Information
#
# Table name: admins
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  bio                    :text
#  power                  :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
  :recoverable, :rememberable, :trackable, :validatable,
  authentication_keys: [ :login ]

  attr_accessor :login

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :bio, :name, :power, :login
  has_and_belongs_to_many :articles
  has_and_belongs_to_many :mini_articles
  has_and_belongs_to_many :reviews
  has_and_belongs_to_many :mini_reviews

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      arr = where(name: login) or where(email: login)
      arr.first
    else
      where(conditions).first
    end
  end
end
