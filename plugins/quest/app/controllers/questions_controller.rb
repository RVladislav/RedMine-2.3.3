class QuestionsController < ApplicationController
  unloadable

  def index
	@ques = Questions.all
  end
  
  def ans 
  	@userc = User.current.id
  	if Useranswer.new(users_id: @userc, answers_id: "3").invalid?
  		then
  			flash[:notice] = 'No save'
  		else
  			Useranswer.create(users_id: @userc, answers_id: "3")
  			flash[:notice] = 'Save'
  	end 
	redirect_to :action => 'index'
  end
end
