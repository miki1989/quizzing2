class Quizz < ActiveRecord::Base
validates_presence_of :question, :ans1, :ans2
validates_numericality_of :correctAns

belongs_to :user



end
