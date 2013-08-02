class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # attr_accessible :title, :body

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :user_type

  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false

  belongs_to :rolable, :polymorphic => true

  def designer?
    if user_type == 'Designer'
      true
    end
  end

  def company?
    if user_type == 'Company'
      true
    end
  end
end