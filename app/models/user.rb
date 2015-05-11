class User < ActiveRecord::Base
  has_many :elements
  validates_presence_of :firstname, :message => "First Name can't be blank"
  validates_presence_of :lastname, :message => "Last Name can't be blank"
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create , :message=> "Must Enter a Valid Email Adress"
  validates_length_of :password, in: 5..20 , :message => "Password must be between 5 and 20 characters"
  has_secure_password

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(sting, cost: cost)
  end
end
