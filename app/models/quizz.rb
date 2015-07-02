class Quizz < ActiveRecord::Base
	validates :question, :ans1, :ans2, :ans3, :ans4, presence: true
	validates :correctAns, numericality: { only_integer: true } 
	belongs_to :user
end
