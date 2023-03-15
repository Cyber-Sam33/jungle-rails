class User < ApplicationRecord

  # class User < ActiveRecord::Base

  has_secure_password
  
  validates :name, presence: true
  
  # check email has not already been entered
  validates :email, presence:true, uniqueness: {case_sensitive: false}, length: { minimum: 8 }

  
  validates :password_digest, presence: true
  
  # PASSWORD_REQUIREMENTS  
  def self.authenticate_with_credentials (email, password)
    # remove whitespace and make lowercase for validation
    email = email.downcase.strip
    user = User.find_by_email(email)
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(password)
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      user
    else
    # If user's login doesn't work, send them back to the login form.
      nil
    end
  end
  
  # end
end
