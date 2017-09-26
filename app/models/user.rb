class User < ApplicationRecord
  include UsersHelper

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

=begin
  after_initialize do
    @password_spec = password_spec
  end
=end

  before_validation do
    self.email = email.downcase
    if self.alias.blank?
      self.alias = name if !self.name.blank?
    end
  end

  validates :name,presence:true,length:{maximum:50,minimum:5}
  validates :email,presence:true,length:{maximum:255,minimum:5},format:{with:VALID_EMAIL_REGEX },uniqueness:{ case_sensitive: false }
  validates :alias,presence:true,length:{maximum:255,minimum:5}
  validates :password,presence:true,length:{maximum:255,minimum: 6}

  has_secure_password


  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)   
  end


end
