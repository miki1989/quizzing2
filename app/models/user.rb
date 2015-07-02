class User < ActiveRecord::Base
	has_secure_password
	validates :first_name, presence: true, length: { maximum: 50 }
	validates :last_name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
			format: { with: VALID_EMAIL_REGEX },
			uniqueness: { case_sensitive: false }
	has_many :quizzs

	def admin?
	self.role == 'admin'
	end
end
