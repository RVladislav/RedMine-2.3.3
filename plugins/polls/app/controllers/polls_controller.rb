class PollsController < ApplicationController
  unloadable

  def index
    @polls = Poll.all
  end
  
  def show
	flash[:notice] = 'Show!'
	redirect_to :action => 'index'
  end
  
  def vote
    poll = Poll.find(params[:id])
    poll.vote(params[:answer])
    if poll.save
      flash[:notice] = 'Saved'
    end
    redirect_to :action => 'index'
  end
end