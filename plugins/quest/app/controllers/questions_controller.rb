class QuestionsController < ApplicationController
  unloadable

  def index
	@ques = Questions.all
  end
  
  def ans 
	flash[:notice] = 'Save'
	redirect_to :action => 'index'
  end
end
