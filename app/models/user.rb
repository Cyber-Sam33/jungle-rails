class User < ApplicationRecord

  # class User < ActiveRecord::Base

    has_secure_password
    
    validates :name, presence: true

    # check email has not already been entered
    validates :email, presence:true, uniqueness: true, confirmation: { case_sensitive: false },length: { minimum: 8 }, if: :password_digest_changed?

    # below line taken from stack overflow:
    # validates :password, length: { minimum: 8 }, if: :password_digest_changed?

    # validates :email, confirmation: { case_sensitive: false }

    validates :password_digest, presence: true

    # PASSWORD_REQUIREMENTS 
  
  # end
end
