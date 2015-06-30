class QuizzMailer < ApplicationMailer

default :from => "example@o2.com"
	def test_result_positive(quizz)
	@quizz = quizz
	@user = user
	mail(:to => @quizz.user.email, :subject => "Test result")
	end

	def test_result(quizz)
	@quizz = quizz	
	
	mail(:to => @quizz.email, :subject => "Test result")
	end
end
