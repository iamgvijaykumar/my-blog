class User < ActiveRecord::Base
	has_many :articles
	before_save { self.email = email.downcase}
	validates :username,presence: true, uniqueness:{case_sensitive: false} ,
				 length: {minimum: 6, maximum: 20}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,presence: true, uniqueness:{case_sensitive: false} ,
				 length: { maximum: 160 } ,  format: { with: VALID_EMAIL_REGEX }
	


	

end
