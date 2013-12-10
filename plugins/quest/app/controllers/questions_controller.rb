class QuestionsController < ApplicationController
  unloadable

  def index
	@ques = Questions.all
  end

  def showans
    @ua = Useranswer.all
    @ques = Questions.all
    @answe = Answers.where(id: [1])
  end
  
  def ans 
  	@userc = User.current.id
	Useranswer.create(users_id: @userc, answers_id: "3")
  	flash[:notice] = 'Save'
	redirect_to :action => 'index'
  end
end
