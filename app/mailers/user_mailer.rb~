class UserMailer < ApplicationMailer
default :from => "quizzing89@gmail.com"
	def test_result_positive(user)
	@user = user
	mail(:to => @user.email, :subject => "Test result")
	end

	def test_result(user)
	@user = user
	mail(:to => @user.email, :subject => "Test result")
	end

	def welcome(user)
	@user = user
	mail(:to => @user.email, subject: 'Welcome to My Awesome Site')
	end	
end
